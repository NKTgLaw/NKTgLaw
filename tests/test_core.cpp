// 🧪 NKTgLaw Core Test Suite (C++)

#include <iostream>
#include <cassert>
#include "../core/nktg.hpp"

int main() {
    // Test case: default values
    double x = 2.0;
    double v = 3.0;
    double m = 5.0;
    double dm_dt = 0.1;

    double p = nktg::momentum(m, v);
    assert(p == 15.0);

    double NKTg1 = nktg::computeNKTg1(x, p);
    assert(NKTg1 == 30.0);

    double NKTg2 = nktg::computeNKTg2(dm_dt, p);
    assert(NKTg2 == 1.5);

    std::cout << "✅ All core tests passed.\n";
    return 0;
}
