% ZPL: Z-level Parallel Language for scientific computing
config
  var x: real = 2.0;
  var v: real = 3.0;
  var m: real = 5.0;
  var dm_dt: real = 0.1;
  var p: real;
  var NKTg1: real;
  var NKTg2: real;
begin
  p := m * v;
  NKTg1 := x * p;
  NKTg2 := dm_dt * p;
  writeln("p=", p, " NKTg1=", NKTg1, " NKTg2=", NKTg2);
end;
