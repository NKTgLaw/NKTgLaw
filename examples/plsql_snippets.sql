-- PL/SQL: procedural extension for Oracle SQL
DECLARE
  x      NUMBER := 2.0;
  v      NUMBER := 3.0;
  m      NUMBER := 5.0;
  dm_dt  NUMBER := 0.1;
  p      NUMBER;
  NKTg1  NUMBER;
  NKTg2  NUMBER;
BEGIN
  p := m * v;
  NKTg1 := x * p;
  NKTg2 := dm_dt * p;
  DBMS_OUTPUT.PUT_LINE('p=' || p || ' NKTg1=' || NKTg1 || ' NKTg2=' || NKTg2);
END;
