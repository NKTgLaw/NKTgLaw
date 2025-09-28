# Julia: scientific computing, performance
x, v, m, dm_dt = 2.0, 3.0, 5.0, 0.1
p = m * v
NKTg1 = x * p
NKTg2 = dm_dt * p
println("p=$p NKTg1=$NKTg1 NKTg2=$NKTg2")
