! Fortran: used in scientific and engineering computation
program NKTgLaw
  real :: x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1
  real :: p, NKTg1, NKTg2
  p = m * v
  NKTg1 = x * p
  NKTg2 = dm_dt * p
  print *, "p=", p, "NKTg1=", NKTg1, "NKTg2=", NKTg2
end program NKTgLaw
