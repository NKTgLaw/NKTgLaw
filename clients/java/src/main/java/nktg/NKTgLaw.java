package nktg;

public class NKTgLaw {
    public static double momentum(double m, double v) {
        return m * v;
    }

    public static double nktg1(double x, double m, double v) {
        return x * momentum(m, v);
    }

    public static double nktg2(double dm_dt, double m, double v) {
        return dm_dt * momentum(m, v);
    }
}
