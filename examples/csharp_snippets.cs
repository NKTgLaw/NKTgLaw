// C#: Windows apps, Unity
using System;
class Program {
    static void Main() {
        double x = 2, v = 3, m = 5, dm_dt = 0.1;
        double p = m * v, NKTg1 = x * p, NKTg2 = dm_dt * p;
        Console.WriteLine($"p={p} NKTg1={NKTg1} NKTg2={NKTg2}");
    }
}
