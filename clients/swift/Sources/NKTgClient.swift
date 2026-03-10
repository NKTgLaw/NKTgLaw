public struct NKTgClient {
    public var x: Double
    public var v: Double
    public var m: Double
    public var dmDt: Double

    public init(x: Double, v: Double, m: Double, dmDt: Double) {
        self.x = x
        self.v = v
        self.m = m
        self.dmDt = dmDt
    }

    /// Computes Momentum (p = m * v)
    public func momentum() -> Double {
        return m * v
    }

    /// Computes NKTg1 using Product Logic: NKTg1 = x * p
    public func nktg1() -> Double {
        return x * momentum()
    }

    /// Computes NKTg2 using Product Logic: NKTg2 = dm/dt * p
    public func nktg2() -> Double {
        return dmDt * momentum()
    }
}
