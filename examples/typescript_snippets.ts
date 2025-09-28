// TypeScript: typed superset of JavaScript
const x: number = 2.0;
const v: number = 3.0;
const m: number = 5.0;
const dm_dt: number = 0.1;
const p = m * v;
const NKTg1 = x * p;
const NKTg2 = dm_dt * p;
console.log(`p=${p} NKTg1=${NKTg1} NKTg2=${NKTg2}`);
