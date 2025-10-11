#include "json_min.hpp"
#include <iostream>

int main() {
    using namespace jsonmin;

    Json obj;
    obj["name"] = "NKTgLaw";
    obj["version"] = 1.0;
    obj["active"] = true;
    obj["items"][0] = "alpha";
    obj["items"][1] = "beta";

    std::string out = obj.dump();
    std::cout << out << "\n";

    Json parsed = Json::parse(out);
    std::cout << parsed["name"].get_string() << "\n";
}
