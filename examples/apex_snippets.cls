// Apex: proprietary language for Salesforce development
public class NKTgLaw {
    public static void run() {
        Double x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;
        Double p = m * v;
        Double NKTg1 = x * p;
        Double NKTg2 = dm_dt * p;
        System.debug('p=' + p + ' NKTg1=' + NKTg1 + ' NKTg2=' + NKTg2);
    }
}
