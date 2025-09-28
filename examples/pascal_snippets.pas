{ Pascal: structured programming language used in teaching and legacy systems }
program NKTgLaw;
var x, v, m, dm_dt, p, NKTg1, NKTg2: Real;
begin
  x := 2.0; v := 3.0; m := 5.0; dm_dt := 0.1;
  p := m * v;
  NKTg1 := x * p;
  NKTg2 := dm_dt * p;
  writeln('p=', p:0:2, ' NKTg1=', NKTg1:0:2, ' NKTg2=', NKTg2:0:2);
end.
