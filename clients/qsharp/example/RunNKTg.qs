namespace NKTgLaw {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    @EntryPoint()
    operation RunNKTg() : Unit {
        // Input parameters
        let x = 2.0;
        let v = 3.0;
        let m = 5.0;
        let dm_dt = 0.1;

        // Computing results based on Product Logic
        let p = Momentum(m, v);
        let n1 = NKTg1(x, m, v);
        let n2 = NKTg2(dm_dt, m, v);

        // Displaying results
        Message($"Momentum: {p}"); // Output: 15.0
        Message($"NKTg₁: {n1}");   // Output: 30.0 (x * p)
        Message($"NKTg₂: {n2}");   // Output: 1.5  (dm_dt * p)
    }
}
