// 📡 NKTgLaw API Server Header
// Defines the interface for computing NKTg quantities and exposing them via API

#ifndef NKTG_SERVER_HPP
#define NKTG_SERVER_HPP

#include <string>

namespace nktg {

    // Structure to hold input parameters for the calculation
    struct NKTgInput {
        double x;       // Position (e.g., 2.0)
        double v;       // Velocity (e.g., 3.0)
        double m;       // Mass (e.g., 5.0)
        double dm_dt;   // Rate of mass change over time (e.g., 0.1)
    };

    // Structure to hold calculation results for the response
    struct NKTgOutput {
        double p;       // Momentum (p = m * v)
        double NKTg1;   // NKTg1 = x * p
        double NKTg2;   // NKTg2 = (dm/dt) * p
        std::string tendency; // Descriptive movement tendency
    };

    /**
     * @brief Computes all NKTg quantities based on input parameters.
     * @param input NKTgInput structure containing x, v, m, dm_dt.
     * @return NKTgOutput structure containing p, NKTg1, NKTg2, and tendency.
     */
    NKTgOutput computeNKTg(const NKTgInput& input);

    // Helper functions for individual calculations (Optional for unit tests)
    double momentum(double m, double v);
    double computeNKTg1(double x, double p);
    double computeNKTg2(double dm_dt, double p);

} // namespace nktg

#endif // NKTG_SERVER_HPP
