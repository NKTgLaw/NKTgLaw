pub struct NKTgClient {
    pub x: f64,
    pub v: f64,
    pub m: f64,
    pub dm_dt: f64,
}

impl NKTgClient {
    pub fn new(x: f64, v: f64, m: f64, dm_dt: f64) -> Self {
        Self { x, v, m, dm_dt }
    }

    pub fn momentum(&self) -> f64 {
        self.m * self.v
    }

    pub fn nktg1(&self) -> f64 {
        self.momentum() + self.dm_dt * self.x
    }

    pub fn nktg2(&self) -> f64 {
        self.nktg1() / self.m
    }
}
