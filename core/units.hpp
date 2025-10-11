#pragma once
#include <string>

namespace units {
    double to_SI(double value, const std::string& unit);
    std::string format_unit(double value, const std::string& unit);
}

