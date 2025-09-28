* Stata: statistical software scripting
scalar x = 2.0
scalar v = 3.0
scalar m = 5.0
scalar dm_dt = 0.1
scalar p = m * v
scalar NKTg1 = x * p
scalar NKTg2 = dm_dt * p
display "p=" p " NKTg1=" NKTg1 " NKTg2=" NKTg2
