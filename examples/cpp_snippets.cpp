// C++: high performance, widely used in games and embedded systems
#include <iostream>
int main() {
    double x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;
    double p = m * v;
    double NKTg1 = x * p;
    double NKTg2 = dm_dt * p;
    std::cout << "p=" << p << " NKTg1=" << NKTg1 << " NKTg2=" << NKTg2 << "\n";
    return 0;
}
