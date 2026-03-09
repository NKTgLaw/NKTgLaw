#include <iostream>

class NKTgClient {
public:
    double x, v, m, dm_dt;

    NKTgClient(double x_, double v_, double m_, double dm_dt_)
        : x(x_), v(v_), m(m_), dm_dt(dm_dt_) {}

    // p = m * v
    double momentum() const {
        return m * v;
    }

    // NKTg1 = x * p
    double nktg1() const {
        return x * momentum(); 
    }

    // NKTg2 = (dm/dt) * p
    double nktg2() const {
        return dm_dt * momentum();
    }
};
