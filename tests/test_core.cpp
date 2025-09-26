#include <cassert>
#include "nktg.hpp"

int main() {
    double p = nktg::momentum(5.0, 3.0);
    assert(p == 15.0);

    double NKTg1 = nktg::computeNKTg1(2.0, p);
    assert(NKTg1 == 30.0);

    double NKTg2 = nktg::computeNKTg2(0.1, p);
    assert(NKTg2 == 1.5);

    return 0;
}

