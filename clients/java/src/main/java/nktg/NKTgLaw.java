package nktg;

/**
 * NKTg Law – Java SDK
 * Official implementation of the Law of Varying Inertia using Product Logic.
 */
public class NKTgLaw {

    // Internal state for experimental data
    private final double x;
    private final double v;
    private final double m;
    private final double dmDt;

    public NKTgLaw(double x, double v, double m, double dmDt) {
        this.x = x;
        this.v = v;
        this.m = m;
        this.dmDt = dmDt;
    }

    /**
     * Calculates Linear Momentum: p = m * v
     */
    public double momentum() {
        return m * v;
    }

    /**
     * Calculates NKTg1: x * p
     * Expected for (2, 3, 5): 30.0
     */
    public double nktg1() {
        return x * momentum();
    }

    /**
     * Calculates NKTg2: (dm/dt) * p
     * Expected for (2, 3, 5, 0.1): 1.5
     */
    public double nktg2() {
        return dmDt * momentum();
    }

    // Static helpers for quick calculations
    public static double calculateMomentum(double m, double v) {
        return m * v;
    }
}
