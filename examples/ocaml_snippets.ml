(* OCaml: functional, fast, used in finance *)
let () =
  let x = 2.0 and v = 3.0 and m = 5.0 and dm_dt = 0.1 in
  let p = m *. v in
  let nktg1 = x *. p and nktg2 = dm_dt *. p in
  Printf.printf "p=%.2f NKTg1=%.2f NKTg2=%.2f\n" p nktg1 nktg2
