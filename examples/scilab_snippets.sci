// Scilab: open-source alternative to MATLAB
x = 2.0;
v = 3.0;
m = 5.0;
dm_dt = 0.1;
p = m * v;
NKTg1 = x * p;
NKTg2 = dm_dt * p;
disp("p=" + string(p) + " NKTg1=" + string(NKTg1) + " NKTg2=" + string(NKTg2));
