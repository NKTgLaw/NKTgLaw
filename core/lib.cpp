#include <iostream>
#include "nktg.hpp"

int main() {
    double x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;

    double p = nktg::momentum(m, v);
    double NKTg1 = nktg::computeNKTg1(x, p);
    double NKTg2 = nktg::computeNKTg2(dm_dt, p);

    std::cout << "p=" << p << " NKTg1=" << NKTg1 << " NKTg2=" << NKTg2 << std::endl;
    return 0;
}
