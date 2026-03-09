#include <iostream>

/**
 * NKTgClient implementation based on the NKTg Law of Varying Inertia.
 * Formula: NKTg = f(x, v, m)
 * NKTg1 = x * p
 * NKTg2 = (dm/dt) * p
 */
class NKTgClient {
public:
    double x, v, m, dm_dt;

    // Constructor to initialize position, velocity, mass, and mass variation rate
    NKTgClient(double x_, double v_, double m_, double dm_dt_)
        : x(x_), v(v_), m(m_), dm_dt(dm_dt_) {}

    // Calculate linear momentum: p = m * v
    double momentum() const {
        return m * v;
    }

    // Calculate NKTg1: Product of position and momentum
    double nktg1() const {
        return x * momentum();
    }

    // Calculate NKTg2: Product of mass variation rate and momentum
    double nktg2() const {
        return dm_dt * momentum();
    }
};
