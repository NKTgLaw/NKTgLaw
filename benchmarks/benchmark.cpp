#include <iostream>
#include <chrono>
#include "../core/nktg.hpp"

int main() {
    const int N = 1000000;
    double x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;

    auto start = std::chrono::high_resolution_clock::now();

    for (int i = 0; i < N; ++i) {
        double p = nktg::momentum(m, v);
        double NKTg1 = nktg::computeNKTg1(x, p);
        double NKTg2 = nktg::computeNKTg2(dm_dt, p);
    }

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;

    std::cout << "Computed " << N << " iterations in " << elapsed.count() << " seconds.\n";
    return 0;
}

