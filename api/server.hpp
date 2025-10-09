// 📡 NKTgLaw API Server Header
// Defines the interface for computing NKTg quantities and exposing them via API

#ifndef NKTG_SERVER_HPP
#define NKTG_SERVER_HPP

#include <string>

namespace nktg {

    // Structure to hold input parameters
    struct NKTgInput {
        double x;       // Position
        double v;       // Velocity
        double m;       // Mass
        double dm_dt;   // Rate of mass change
    };

    // Structure to hold output results
    struct NKTgOutput {
        double p;       // Momentum
        double NKTg1;   // x × p
        double NKTg2;   // (dm/dt) × p
        std::string tendency; // Movement tendency description
    };

    // Core computation function
    NKTgOutput computeNKTg(const NKTgInput& input);

    // Optional: function to serialize output to JSON
    std::string to_json(const NKTgOutput& output);

} // namespace nktg

#endif // NKTG_SERVER_HPP

