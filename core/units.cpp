#include <iostream>
#include "units.hpp"

int main() {
    std::cout << "=== Test units.cpp ===" << std::endl;

    double mass_g = 500.0;
    double mass_kg = units::to_SI(mass_g, "g");

    std::cout << "500g = " << mass_kg << " kg" << std::endl;
    std::cout << units::format_unit(mass_kg, "kg") << std::endl;

    return 0;
}

