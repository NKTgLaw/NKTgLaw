#include "crow.h"
#include "nktg.hpp"

int main() {
    crow::SimpleApp app;

    CROW_ROUTE(app, "/nktg").methods("POST"_method)([](const crow::request& req){
        auto body = crow::json::load(req.body);
        if (!body) return crow::response(400);

        double x = body["x"].d();
        double v = body["v"].d();
        double m = body["m"].d();
        double dm_dt = body["dm_dt"].d();

        double p = nktg::momentum(m, v);
        double NKTg1 = nktg::computeNKTg1(x, p);
        double NKTg2 = nktg::computeNKTg2(dm_dt, p);

        crow::json::wvalue result;
        result["p"] = p;
        result["NKTg1"] = NKTg1;
        result["NKTg2"] = NKTg2;
        return crow::response(result);
    });

    app.port(8080).run();
}

