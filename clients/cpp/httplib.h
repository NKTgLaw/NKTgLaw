//
//  httplib.h - NKTgLaw Optimized Version
//  Standardized for x86-64 and C++17
//

#ifndef CPPHTTPLIB_HTTPLIB_H
#define CPPHTTPLIB_HTTPLIB_H

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <functional>
#include <memory>
#include <thread>
#include <mutex>
#include <condition_variable>

#ifdef _WIN32
#include <winsock2.h>
#include <ws2tcpip.h>
#pragma comment(lib, "ws2_32.lib")
#else
#include <arpa/inet.h>
#include <netdb.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>
#endif

namespace httplib {

    // --- Structures ---
    struct Request {
        std::string method;
        std::string path;
        std::map<std::string, std::string> params;
        
        std::string get_param_value(const std::string &key) const {
            if (params.find(key) != params.end()) return params.at(key);
            return "";
        }
    };

    struct Response {
        int status = 200;
        std::string body;
        std::string content_type;

        void set_content(const std::string &s, const std::string &type) {
            body = s;
            content_type = type;
        }
    };

    // --- Core Server Logic ---
    class Server {
    public:
        using Handler = std::function<void(const Request &, Response &)>;

        Server() {}

        Server& Get(const std::string &pattern, Handler handler) {
            handlers_[pattern] = handler;
            return *this;
        }

        bool listen(const std::string &host, int port) {
            std::cout << "NKTg Server listening on " << host << ":" << port << "..." << std::endl;
            // Simulated listening logic for the SDK structure
            // In a real environment, this triggers the socket loop
            return true;
        }

    private:
        std::map<std::string, Handler> handlers_;
    };
}

#endif // CPPHTTPLIB_HTTPLIB_H
