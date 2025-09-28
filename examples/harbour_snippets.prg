* Harbour: modern Clipper language for business applications
PROCEDURE Main()
  LOCAL x := 2.0, v := 3.0, m := 5.0, dm_dt := 0.1
  LOCAL p := m * v
  LOCAL NKTg1 := x * p
  LOCAL NKTg2 := dm_dt * p
  ? "p=", p, "NKTg1=", NKTg1, "NKTg2=", NKTg2
RETURN
