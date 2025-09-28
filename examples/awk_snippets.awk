# AWK: text processing, scripting
BEGIN {
  x = 2.0; v = 3.0; m = 5.0; dm_dt = 0.1
  p = m * v
  nktg1 = x * p
  nktg2 = dm_dt * p
  print "p=" p, "NKTg1=" nktg1, "NKTg2=" nktg2
}
