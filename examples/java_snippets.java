// Java: enterprise applications, Android
public class NKTgLaw {
    public static void main(String[] args) {
        double x = 2, v = 3, m = 5, dm_dt = 0.1;
        double p = m * v, NKTg1 = x * p, NKTg2 = dm_dt * p;
        System.out.printf("p=%.2f NKTg1=%.2f NKTg2=%.2f%n", p, NKTg1, NKTg2);
    }
}
