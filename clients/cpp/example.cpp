#include <iostream>
#include "NKTgClient.cpp" // Linked via CMake or included directly

/**
 * NKTg Law SDK Example Usage
 * Demonstrates the Product Quantity logic for Variable Inertia.
 * Experimental constants: x=2, v=3, m=5, dm/dt=0.1
 */
int main() {
    // Initialize NKTgClient with experimental data
    NKTgClient client(2.0, 3.0, 5.0, 0.1);

    // Output results based on Momentum (p = m * v)
    std::cout << "--- NKTg Law Calculation Results ---" << std::endl;
    std::cout << "Momentum (p): " << client.momentum() << std::endl; // Expected: 15.0
    std::cout << "NKTg1 (x * p): " << client.nktg1() << std::endl;  // Expected: 30.0
    std::cout << "NKTg2 (dm/dt * p): " << client.nktg2() << std::endl; // Expected: 1.5

    return 0;
}
