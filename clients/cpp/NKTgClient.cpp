#include <iostream>

class NKTgClient {
public:
    double x, v, m, dm_dt;

    NKTgClient(double x_, double v_, double m_, double dm_dt_)
        : x(x_), v(v_), m(m_), dm_dt(dm_dt_) {}

    double momentum() {
        return m * v;
    }

    double nktg1() {
        return momentum() + dm_dt * x;
    }

    double nktg2() {
        return nktg1() / m;
    }
};
