-- Haskell: pure functional, strong type system
main = do
  let x = 2.0
      v = 3.0
      m = 5.0
      dm_dt = 0.1
      p = m * v
      nktg1 = x * p
      nktg2 = dm_dt * p
  putStrLn $ "p=" ++ show p ++ " NKTg1=" ++ show nktg1 ++ " NKTg2=" ++ show nktg2
