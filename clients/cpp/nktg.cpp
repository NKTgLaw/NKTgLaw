#include <iostream>
#include <string>
#include "httplib.h"

int main() {
    // Tạo JSON payload
    std::string json = "{ \"x\": 2.0, \"v\": 3.0, \"m\": 5.0, \"dm_dt\": 0.1 }";

    // Gửi POST đến localhost:8080/nktg
    httplib::Client cli("localhost", 8080);
    auto res = cli.Post("/nktg", json, "application/json");

    if (res && res->status == 200) {
        std::cout << "Response from API: " << res->body << std::endl;
    } else {
        std::cerr << "Failed to call API." << std::endl;
    }

    return 0;
}
