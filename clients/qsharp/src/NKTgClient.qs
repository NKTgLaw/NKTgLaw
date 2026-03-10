namespace NKTgLaw {
    // Computes Momentum (p = m * v)
    operation Momentum(m : Double, v : Double) : Double {
        return m * v;
    }

    // Computes NKTg1 using Product Logic (NKTg1 = x * p)
    operation NKTg1(x : Double, m : Double, v : Double) : Double {
        let p = Momentum(m, v);
        return x * p;
    }

    // Computes NKTg2 using Product Logic (NKTg2 = dm/dt * p)
    operation NKTg2(dm_dt : Double, m : Double, v : Double) : Double {
        let p = Momentum(m, v);
        return dm_dt * p;
    }
}
