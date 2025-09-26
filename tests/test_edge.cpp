#include <cassert>
#include <cmath>
#include <iostream>
#include "../core/nktg.hpp"

int main() {
    // 🧨 Case: zero mass
    double p_zero_mass = nktg::momentum(0.0, 10.0);
    assert(p_zero_mass == 0.0);

    // 🧨 Case: negative velocity
    double p_negative_v = nktg::momentum(5.0, -2.0);
    assert(p_negative_v == -10.0);

    // 🧨 Case: x = infinity
    double p = nktg::momentum(1.0, 1.0);
    double NKTg1_inf = nktg::computeNKTg1(INFINITY, p);
    assert(std::isinf(NKTg1_inf));

    // 🧨 Case: velocity = NaN
    double p_nan = nktg::momentum(5.0, NAN);
    assert(std::isnan(p_nan));

    std::cout << "✅ All edge cases passed.\n";
    return 0;
}
