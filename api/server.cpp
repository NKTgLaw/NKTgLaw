#include "crow.h"
#include "nktg.hpp"

/**
 * NKTg Law API Server
 * Uses Crow Framework to handle RESTful requests.
 */
int main() {
    crow::SimpleApp app;

    // Define the /nktg endpoint with POST method
    CROW_ROUTE(app, "/nktg").methods("POST"_method)([](const crow::request& req){
        // Parse the incoming JSON body
        auto body = crow::json::load(req.body);
        
        // Validation: Ensure the JSON is valid
        if (!body) {
            return crow::response(400, "Invalid JSON payload");
        }

        try {
            // Extract physical parameters from request
            double x = body["x"].d();
            double v = body["v"].d();
            double m = body["m"].d();
            double dm_dt = body["dm_dt"].d();

            // Core Logic: Perform NKTg Law calculations
            double p = nktg::momentum(m, v);
            double NKTg1 = nktg::computeNKTg1(x, p);
            double NKTg2 = nktg::computeNKTg2(dm_dt, p);

            // Construct the JSON response
            crow::json::wvalue result;
            result["p"] = p;
            result["NKTg1"] = NKTg1;
            result["NKTg2"] = NKTg2;

            return crow::response(result);
        } catch (const std::exception& e) {
            // Error handling for missing fields or type mismatch
            return crow::response(400, "Data processing error: Check input types");
        }
    });

    // Start the server on port 8080
    app.port(8080).multithreaded().run();
}
