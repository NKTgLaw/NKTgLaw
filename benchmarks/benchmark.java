import nktg.NKTgLaw;

public class benchmark {
    public static void main(String[] args) {
        double m = 5.0, v = 3.0, x = 2.0, dm_dt = 0.1;
        int iterations = 1_000_000;

        long start = System.nanoTime();
        for (int i = 0; i < iterations; i++) {
            double p = NKTgLaw.momentum(m, v);
            double NKTg1 = NKTgLaw.nktg1(x, m, v);
            double NKTg2 = NKTgLaw.nktg2(dm_dt, m, v);
        }
        long end = System.nanoTime();

        double elapsedSeconds = (end - start) / 1e9;
        System.out.printf("Java benchmark: %d iterations in %.2f seconds%n", iterations, elapsedSeconds);
    }
}
