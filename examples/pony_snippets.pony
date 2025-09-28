// Pony: actor-model language with memory safety and concurrency
actor Main
  new create(env: Env) =>
    let x: F64 = 2.0
    let v: F64 = 3.0
    let m: F64 = 5.0
    let dm_dt: F64 = 0.1
    let p = m * v
    let NKTg1 = x * p
    let NKTg2 = dm_dt * p
    env.out.print("p=" + p.string() + " NKTg1=" + NKTg1.string() + " NKTg2=" + NKTg2.string())
