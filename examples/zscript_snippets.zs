// ZScript: scripting language for ZDoom modding
double x = 2.0;
double v = 3.0;
double m = 5.0;
double dm_dt = 0.1;
double p = m * v;
double NKTg1 = x * p;
double NKTg2 = dm_dt * p;
Log(s:"p=", p, s:" NKTg1=", NKTg1, s:" NKTg2=", NKTg2);
