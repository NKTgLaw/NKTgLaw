// Carbon: experimental successor to C++ by Google
package Sample api;

fn Main() -> i32 {
  let x: f64 = 2.0;
  let v: f64 = 3.0;
  let m: f64 = 5.0;
  let dm_dt: f64 = 0.1;
  let p: f64 = m * v;
  let NKTg1: f64 = x * p;
  let NKTg2: f64 = dm_dt * p;
  Print("p=", p, " NKTg1=", NKTg1, " NKTg2=", NKTg2);
  return 0;
}
