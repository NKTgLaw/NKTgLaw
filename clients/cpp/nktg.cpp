#include <iostream>
#include <string>
#include "httplib.h"

int main() {
    // Input values
    double x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;

    // Construct JSON payload
    std::string json = "{ \"x\": " + std::to_string(x) +
                       ", \"v\": " + std::to_string(v) +
                       ", \"m\": " + std::to_string(m) +
                       ", \"dm_dt\": " + std::to_string(dm_dt) + " }";

    // Send POST request to localhost:8080/nktg
    httplib::Client client("localhost", 8080);
    auto res = client.Post("/nktg", json, "application/json");

    if (res && res->status == 200) {
        std::cout << "Response from API: " << res->body << std::endl;
    } else {
        std::cerr << "API request failed." << std::endl;
    }

    return 0;
}
