namespace NKTgLaw {
    operation Momentum(m : Double, v : Double) : Double {
        return m * v;
    }

    operation NKTg1(m : Double, v : Double, dm_dt : Double, x : Double) : Double {
        return Momentum(m, v) + dm_dt * x;
    }

    operation NKTg2(m : Double, v : Double, dm_dt : Double, x : Double) : Double {
        return NKTg1(m, v, dm_dt, x) / m;
    }
}
