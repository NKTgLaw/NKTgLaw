namespace NKTgLaw.Benchmark {
    open Microsoft.Quantum.Diagnostics;
    open NKTgLaw;

    @EntryPoint()
    operation BenchmarkNKTg() : Unit {
        for (i in 1..100000) {
            let _ = NKTg2(5.0, 3.0, 0.1, 2.0);
        }
        Message("Benchmark completed: 100,000 iterations.");
    }
}
