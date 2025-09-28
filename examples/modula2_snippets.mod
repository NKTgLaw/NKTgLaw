(* Modula-2: structured systems programming *)
MODULE NKTgLaw;
FROM InOut IMPORT WriteString, WriteReal, WriteLn;

VAR x, v, m, dm_dt, p, NKTg1, NKTg2: REAL;

BEGIN
  x := 2.0; v := 3.0; m := 5.0; dm_dt := 0.1;
  p := m * v;
  NKTg1 := x * p;
  NKTg2 := dm_dt * p;
  WriteString("p="); WriteReal(p, 2);
  WriteString(" NKTg1="); WriteReal(NKTg1, 2);
  WriteString(" NKTg2="); WriteReal(NKTg2, 2);
  WriteLn;
END NKTgLaw.
