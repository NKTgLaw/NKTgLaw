#include <iostream>
#include "nktg.hpp"

int main() {
    std::cout << "=== Test nktg.cpp ===" << std::endl;

    double m = 5.0, v = 3.0, x = 2.0, dm_dt = 0.1;
    double p = nktg::momentum(m, v);

    std::cout << "momentum = " << p << std::endl;
    std::cout << "NKTg1 = " << nktg::computeNKTg1(x, p) << std::endl;
    std::cout << "NKTg2 = " << nktg::computeNKTg2(dm_dt, p) << std::endl;

    return 0;
}
