#include <iostream>
#include <cassert>
#include "../httplib.h"

int main() {
    // Prepare JSON payload
    std::string json = "{ \"x\": 2.0, \"v\": 3.0, \"m\": 5.0, \"dm_dt\": 0.1 }";

    // Send POST request
    httplib::Client client("localhost", 8080);
    auto res = client.Post("/nktg", json, "application/json");

    // Basic checks
    assert(res != nullptr);
    assert(res->status == 200);

    // Optional: check response format
    std::string body = res->body;
    std::cout << "API response: " << body << std::endl;

    // You can add more checks here if response is JSON
    return 0;
}
