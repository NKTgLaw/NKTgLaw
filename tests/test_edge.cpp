// 🧪 NKTgLaw Edge Case Test Suite (C++)

#include <iostream>
#include <cassert>
#include <cmath>
#include "../core/nktg.hpp"

bool nearly_equal(double a, double b, double epsilon = 1e-9) {
    return std::fabs(a - b) < epsilon;
}

int main() {
    // Case 1: Zero mass
    double p1 = nktg::momentum(0.0, 10.0);
    assert(nearly_equal(p1, 0.0));

    // Case 2: Zero velocity
    double p2 = nktg::momentum(5.0, 0.0);
    assert(nearly_equal(p2, 0.0));

    // Case 3: Negative mass
    double p3 = nktg::momentum(-2.0, 3.0);
    assert(nearly_equal(p3, -6.0));

    // Case 4: Negative velocity
    double p4 = nktg::momentum(4.0, -2.0);
    assert(nearly_equal(p4, -8.0));

    // Case 5: Large values
    double p5 = nktg::momentum(1e6, 1e6);
    assert(nearly_equal(p5, 1e12));

    // Case 6: Zero position
    double NKTg1 = nktg::computeNKTg1(0.0, 10.0);
    assert(nearly_equal(NKTg1, 0.0));

    // Case 7: Zero dm/dt
    double NKTg2 = nktg::computeNKTg2(0.0, 10.0);
    assert(nearly_equal(NKTg2, 0.0));

    std::cout << "✅ All edge case tests passed.\n";
    return 0;
}
