REM BASIC: Beginner's All-purpose Symbolic Instruction Code
DIM x AS SINGLE, v AS SINGLE, m AS SINGLE, dm_dt AS SINGLE
DIM p AS SINGLE, NKTg1 AS SINGLE, NKTg2 AS SINGLE
x = 2.0: v = 3.0: m = 5.0: dm_dt = 0.1
p = m * v
NKTg1 = x * p
NKTg2 = dm_dt * p
PRINT "p="; p; " NKTg1="; NKTg1; " NKTg2="; NKTg2
