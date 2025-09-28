// Zig: low-level systems programming language
const std = @import("std");

pub fn main() void {
    const x: f64 = 2.0;
    const v: f64 = 3.0;
    const m: f64 = 5.0;
    const dm_dt: f64 = 0.1;
    const p = m * v;
    const NKTg1 = x * p;
    const NKTg2 = dm_dt * p;
    std.debug.print("p={d} NKTg1={d} NKTg2={d}\n", .{p, NKTg1, NKTg2});
}
