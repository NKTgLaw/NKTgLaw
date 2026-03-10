pub struct NKTgClient {
    pub x: f64,
    pub v: f64,
    pub m: f64,
    pub dm_dt: f64,
}

impl NKTgClient {
    /// Creates a new NKTgClient instance.
    pub fn new(x: f64, v: f64, m: f64, dm_dt: f64) -> Self {
        Self { x, v, m, dm_dt }
    }

    /// Computes Momentum (p = m * v)
    pub fn momentum(&self) -> f64 {
        self.m * self.v
    }

    /// Computes NKTg1 using Product Logic: NKTg1 = x * p
    pub fn nktg1(&self) -> f64 {
        self.x * self.momentum()
    }

    /// Computes NKTg2 using Product Logic: NKTg2 = dm/dt * p
    pub fn nktg2(&self) -> f64 {
        self.dm_dt * self.momentum()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_product_logic() {
        let client = NKTgClient::new(2.0, 3.0, 5.0, 0.1);
        assert_eq!(client.momentum(), 15.0);
        assert_eq!(client.nktg1(), 30.0);
        assert_eq!(client.nktg2(), 1.5);
    }
}
