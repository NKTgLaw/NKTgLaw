namespace NKTgLaw {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    @EntryPoint()
    operation RunNKTg() : Unit {
        let x = 2.0;
        let v = 3.0;
        let m = 5.0;
        let dm_dt = 0.1;

        Message($"Momentum: {Momentum(m, v)}");
        Message($"NKTg₁: {NKTg1(m, v, dm_dt, x)}");
        Message($"NKTg₂: {NKTg2(m, v, dm_dt, x)}");
    }
}
