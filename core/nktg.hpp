#ifndef NKTG_HPP
#define NKTG_HPP

namespace nktg {

    // Calculate momentum
    inline double momentum(double m, double v) {
        return m * v;
    }

    // Calculate NKTg₁ = x × p
    inline double computeNKTg1(double x, double p) {
        return x * p;
    }

    // Calculate NKTg₂ = (dm/dt) × p
    inline double computeNKTg2(double dm_dt, double p) {
        return dm_dt * p;
    }

}

#endif
