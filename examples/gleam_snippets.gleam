// Gleam: functional language for Erlang VM
import gleam/io

pub fn main() {
  let x = 2.0
  let v = 3.0
  let m = 5.0
  let dm_dt = 0.1
  let p = m *. v
  let NKTg1 = x *. p
  let NKTg2 = dm_dt *. p
  io.println("p=" <> float.to_string(p) <> " NKTg1=" <> float.to_string(NKTg1) <> " NKTg2=" <> float.to_string(NKTg2))
}
