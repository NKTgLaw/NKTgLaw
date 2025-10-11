#include <iostream>
#include "utils.hpp"

int main() {
    std::cout << "=== Testing utils.cpp ===" << std::endl;

    double val = 3.5;
    if (utils::validate_positive(val)) {
        utils::log("Valid value: " + std::to_string(val));
    } else {
        utils::log("Invalid value");
    }

    return 0;
}

