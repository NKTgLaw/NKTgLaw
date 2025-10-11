#include "httplib.h"
#include "../core/nktg.hpp"

int main() {
    httplib::Server svr;

    svr.Post("/momentum", [](const httplib::Request& req, httplib::Response& res) {
        double m = std::stod(req.get_param_value("mass"));
        double v = std::stod(req.get_param_value("velocity"));
        double p = nktg::momentum(m, v);
        res.set_content(std::to_string(p), "text/plain");
    });

    svr.Post("/nktg1", [](const httplib::Request& req, httplib::Response& res) {
        double x = std::stod(req.get_param_value("x"));
        double p = std::stod(req.get_param_value("momentum"));
        double result = nktg::computeNKTg1(x, p);
        res.set_content(std::to_string(result), "text/plain");
    });

    svr.Post("/nktg2", [](const httplib::Request& req, httplib::Response& res) {
        double dm_dt = std::stod(req.get_param_value("dm_dt"));
        double p = std::stod(req.get_param_value("momentum"));
        double result = nktg::computeNKTg2(dm_dt, p);
        res.set_content(std::to_string(result), "text/plain");
    });

    std::cout << "NKTgLaw backend running at http://localhost:8080" << std::endl;
    svr.listen("localhost", 8080);
}
