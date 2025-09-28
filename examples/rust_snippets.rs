// Rust: memory-safe systems programming language
fn main() {
    let x = 2.0;
    let v = 3.0;
    let m = 5.0;
    let dm_dt = 0.1;
    let p = m * v;
    let nktg1 = x * p;
    let nktg2 = dm_dt * p;
    println!("p={} NKTg1={} NKTg2={}", p, nktg1, nktg2);
}
