using System;
using System.Diagnostics;
using NKTgLaw;

class Benchmark
{
    static void Main()
    {
        int iterations = 100000;
        var stopwatch = Stopwatch.StartNew();

        for (int i = 0; i < iterations; i++)
        {
            var client = new NKTgClient(2.0, 3.0, 5.0, 0.1);
            client.Momentum();
            client.NKTg1();
            client.NKTg2();
        }

        stopwatch.Stop();
        Console.WriteLine($"Ran {iterations} iterations in {stopwatch.ElapsedMilliseconds} ms");
        Console.WriteLine($"Average time per iteration: {(double)stopwatch.ElapsedMilliseconds / iterations:F4} ms");
    }
}
