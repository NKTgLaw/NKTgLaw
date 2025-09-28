comment Algol: historical language for algorithm description;
begin
  real x, v, m, dm_dt, p, NKTg1, NKTg2;
  x := 2.0; v := 3.0; m := 5.0; dm_dt := 0.1;
  p := m * v;
  NKTg1 := x * p;
  NKTg2 := dm_dt * p;
  print("p=", p, " NKTg1=", NKTg1, " NKTg2=", NKTg2);
end;
