// AssemblyScript: TypeScript-like language that compiles to WebAssembly
export function calculate(): void {
  let x: f64 = 2.0, v: f64 = 3.0, m: f64 = 5.0, dm_dt: f64 = 0.1;
  let p: f64 = m * v;
  let NKTg1: f64 = x * p;
  let NKTg2: f64 = dm_dt * p;
  console.log("p=" + p.toString() + " NKTg1=" + NKTg1.toString() + " NKTg2=" + NKTg2.toString());
}
