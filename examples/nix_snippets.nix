# Nix: declarative language for package management
let
  x = 2.0;
  v = 3.0;
  m = 5.0;
  dm_dt = 0.1;
  p = m * v;
  NKTg1 = x * p;
  NKTg2 = dm_dt * p;
in
  builtins.trace "p=${toString p} NKTg1=${toString NKTg1} NKTg2=${toString NKTg2}" null
