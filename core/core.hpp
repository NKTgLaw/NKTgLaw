#include <iostream>
#include "nktg.hpp"
#include "units.hpp"
#include "utils.hpp"

int main() {
    std::cout << "=== Test core.hpp tổng hợp ===" << std::endl;

    double x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;

    double p = nktg::momentum(m, v);
    double nktg1 = nktg::computeNKTg1(x, p);
    double nktg2 = nktg::computeNKTg2(dm_dt, p);

    std::cout << "p=" << p << " NKTg1=" << nktg1 << " NKTg2=" << nktg2 << std::endl;
    return 0;
}

