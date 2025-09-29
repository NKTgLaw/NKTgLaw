import nktg.NKTgLaw;

public class Example {
    public static void main(String[] args) {
        double x = 2, v = 3, m = 5, dm_dt = 0.1;
        double p = NKTgLaw.momentum(m, v);
        double NKTg1 = NKTgLaw.nktg1(x, m, v);
        double NKTg2 = NKTgLaw.nktg2(dm_dt, m, v);
        System.out.printf("p=%.2f NKTg1=%.2f NKTg2=%.2f%n", p, NKTg1, NKTg2);
    }
}
