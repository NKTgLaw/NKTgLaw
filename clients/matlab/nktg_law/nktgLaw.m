function [p, NKTg1, NKTg2] = nktgLaw(x, v, m, dm_dt)
    p = m * v;
    NKTg1 = x * p;
    NKTg2 = dm_dt * p;
end
