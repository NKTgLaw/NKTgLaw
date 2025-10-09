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

    public func momentum() -> Double {
        return m * v
    }

    public func nktg1() -> Double {
        return momentum() + dmDt * x
    }

    public func nktg2() -> Double {
        return nktg1() / m
    }
}
