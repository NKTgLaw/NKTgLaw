const { NKTgClient } = require('./src/index');

const client = new NKTgClient(2.0, 3.0, 5.0, 0.1);

console.log("Momentum:", client.momentum());
console.log("NKTg₁:", client.nktg1());
console.log("NKTg₂:", client.nktg2());
