-- MaxScript: scripting for Autodesk 3ds Max
x = 2.0
v = 3.0
m = 5.0
dm_dt = 0.1
p = m * v
NKTg1 = x * p
NKTg2 = dm_dt * p
format "p=% NKTg1=% NKTg2=%\n" p NKTg1 NKTg2
