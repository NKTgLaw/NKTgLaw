// Beef: performance-oriented systems programming language
using System;
namespace NKTgLaw {
  class Program {
    static void Main() {
      let x: f32 = 2.0, v: f32 = 3.0, m: f32 = 5.0, dm_dt: f32 = 0.1;
      let p = m * v;
      let NKTg1 = x * p;
      let NKTg2 = dm_dt * p;
      Console.WriteLine("p={0} NKTg1={1} NKTg2={2}", p, NKTg1, NKTg2);
    }
  }
}
