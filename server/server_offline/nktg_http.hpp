#pragma once
/*
 * httplib_min.h - minimal offline HTTP server (based on cpp-httplib)
 * Optimized by ChatGPT for local backend use
 * - No client implementation
 * - No SSL, Zlib, Brotli, Zstd
 * - No logging, no regex
 * - Fast compile, header-only
 * - Windows/Linux compatible
 */

#include <string>
#include <map>
#include <unordered_map>
#include <functional>
#include <thread>
#include <mutex>
#include <vector>
#include <list>
#include <sstream>
#include <chrono>
#include <atomic>
#include <cassert>
#include <condition_variable>
#include <sys/types.h>

#ifdef _WIN32
#define _CRT_SECURE_NO_WARNINGS
#define _CRT_NONSTDC_NO_DEPRECATE
#include <winsock2.h>
#include <ws2tcpip.h>
#pragma comment(lib, "ws2_32.lib")
using socket_t = SOCKET;
using socklen_t = int;
#define close_socket closesocket
#else
#include <arpa/inet.h>
#include <unistd.h>
#include <netinet/in.h>
#include <netdb.h>
#include <sys/socket.h>
#include <sys/select.h>
using socket_t = int;
#define INVALID_SOCKET (-1)
#define close_socket close
#endif

namespace httplib {

// ===== Basic HTTP structs =====

using Headers = std::multimap<std::string, std::string>;
struct Request {
    std::string method;
    std::string path;
    std::string body;
    Headers headers;
};

struct Response {
    int status = 200;
    std::string body;
    Headers headers;

    void set_content(const std::string& s, const std::string& type) {
        body = s;
        headers.emplace("Content-Type", type);
        headers.emplace("Content-Length", std::to_string(s.size()));
    }
};

// ===== Stream wrapper =====
class Stream {
public:
    Stream(socket_t sock) : sock_(sock) {}
    ~Stream() { if (sock_ != INVALID_SOCKET) close_socket(sock_); }

    ssize_t read(char* ptr, size_t size) { return recv(sock_, ptr, (int)size, 0); }
    ssize_t write(const char* ptr, size_t size) { return send(sock_, ptr, (int)size, 0); }

private:
    socket_t sock_;
};

// ===== Thread pool =====
class ThreadPool {
public:
    explicit ThreadPool(size_t n = std::max(4u, std::thread::hardware_concurrency())) {
        for (size_t i = 0; i < n; ++i) threads_.emplace_back([this]() { worker(); });
    }
    ~ThreadPool() {
        {
            std::lock_guard<std::mutex> lk(mutex_);
            stop_ = true;
        }
        cond_.notify_all();
        for (auto& t : threads_) t.join();
    }
    void enqueue(std::function<void()> fn) {
        {
            std::lock_guard<std::mutex> lk(mutex_);
            jobs_.push_back(std::move(fn));
        }
        cond_.notify_one();
    }
private:
    void worker() {
        while (true) {
            std::function<void()> job;
            {
                std::unique_lock<std::mutex> lk(mutex_);
                cond_.wait(lk, [&] { return stop_ || !jobs_.empty(); });
                if (stop_ && jobs_.empty()) return;
                job = std::move(jobs_.front());
                jobs_.pop_front();
            }
            job();
        }
    }
    std::vector<std::thread> threads_;
    std::list<std::function<void()>> jobs_;
    std::mutex mutex_;
    std::condition_variable cond_;
    bool stop_ = false;
};

// ===== Server =====
class Server {
public:
    using Handler = std::function<void(const Request&, Response&)>;

    bool Get(const std::string& pattern, Handler handler) {
        handlers_["GET:" + pattern] = std::move(handler);
        return true;
    }
    bool Post(const std::string& pattern, Handler handler) {
        handlers_["POST:" + pattern] = std::move(handler);
        return true;
    }

    bool listen(const std::string& host, int port) {
#ifdef _WIN32
        WSADATA wsaData;
        WSAStartup(MAKEWORD(2, 2), &wsaData);
#endif
        socket_t server_sock = socket(AF_INET, SOCK_STREAM, 0);
        if (server_sock == INVALID_SOCKET) return false;

        sockaddr_in addr{};
        addr.sin_family = AF_INET;
        addr.sin_port = htons(port);
        addr.sin_addr.s_addr = inet_addr(host.c_str());
        int yes = 1;
        setsockopt(server_sock, SOL_SOCKET, SO_REUSEADDR, (char*)&yes, sizeof(yes));
        if (bind(server_sock, (struct sockaddr*)&addr, sizeof(addr)) < 0) return false;
        if (::listen(server_sock, 5) < 0) return false;

        std::cout << "[httplib_min] Listening on " << host << ":" << port << "\n";

        while (true) {
            sockaddr_in cli{};
            socklen_t len = sizeof(cli);
            socket_t sock = accept(server_sock, (struct sockaddr*)&cli, &len);
            if (sock == INVALID_SOCKET) continue;
            pool_.enqueue([this, sock]() { process(sock); });
        }
        close_socket(server_sock);
        return true;
    }

private:
    void process(socket_t sock) {
        Stream strm(sock);
        char buffer[8192];
        ssize_t n = strm.read(buffer, sizeof(buffer) - 1);
        if (n <= 0) return;
        buffer[n] = '\0';

        std::istringstream reqs(buffer);
        Request req;
        reqs >> req.method >> req.path;

        Response res;
        auto key = req.method + ":" + req.path;
        if (handlers_.count(key)) {
            handlers_[key](req, res);
        } else {
            res.status = 404;
            res.set_content("Not Found", "text/plain");
        }

        std::ostringstream oss;
        oss << "HTTP/1.1 " << res.status << " OK\r\n";
        for (auto& h : res.headers)
            oss << h.first << ": " << h.second << "\r\n";
        oss << "\r\n" << res.body;
        auto msg = oss.str();
        strm.write(msg.c_str(), msg.size());
    }

    std::unordered_map<std::string, Handler> handlers_;
    ThreadPool pool_{4};
};

} // namespace httplib
