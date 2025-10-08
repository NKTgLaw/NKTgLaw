class NKTgClient {
  constructor(x, v, m, dm_dt) {
    this.x = x;
    this.v = v;
    this.m = m;
    this.dm_dt = dm_dt;
  }

  momentum() {
    return this.m * this.v;
  }

  nktg1() {
    return this.momentum() + this.dm_dt * this.x;
  }

  nktg2() {
    return this.nktg1() / this.m;
  }
}

module.exports = { NKTgClient };
