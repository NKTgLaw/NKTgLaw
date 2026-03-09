#include <iostream>
#include <string>
#include "httplib.h"

/**
 * NKTg Law Client Example
 * Sends experimental data to the NKTg Universa API via POST request.
 * Expected API Response for these values: NKTg1=30.0, NKTg2=1.5
 */
int main() {
    // 1. Define experimental input values
    double x = 2.0;
    double v = 3.0;
    double m = 5.0;
    double dm_dt = 0.1;

    // 2. Construct JSON payload for the NKTg Law components
    std::string json = "{ \"x\": " + std::to_string(x) +
                       ", \"v\": " + std::to_string(v) +
                       ", \"m\": " + std::to_string(m) +
                       ", \"dm_dt\": " + std::to_string(dm_dt) + " }";

    // 3. Initialize HTTP Client for localhost on port 8080
    httplib::Client cli("localhost", 8080);

    // 4. Send POST request to the /nktg endpoint
    std::cout << "Sending data to NKTg Universa API..." << std::endl;
    auto res = cli.Post("/nktg", json, "application/json");

    // 5. Handle the API response
    if (res && res->status == 200) {
        std::cout << "Successfully connected to API." << std::endl;
        std::cout << "Response from API: " << res->body << std::endl;
    } else {
        std::cerr << "API request failed. Ensure the NKTg Server is running on port 8080." << std::endl;
        if (res) {
            std::cerr << "Status code: " << res->status << std::endl;
        }
    }

    return 0;
}
