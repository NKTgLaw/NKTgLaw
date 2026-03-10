class NKTgClient:
    def __init__(self, x: float, v: float, m: float, dm_dt: float):
        self.x = x
        self.v = v
        self.m = m
        self.dm_dt = dm_dt

    def momentum(self) -> float:
        return self.m * self.v

    def nktg1(self) -> float:
        return self.x * self.momentum()

    def nktg2(self) -> float:
        return self.dm_dt * self.momentum()

    @staticmethod
    def static_nktg1(x: float, m: float, v: float) -> float:
        return x * (m * v)

    @staticmethod
    def static_nktg2(dm_dt: float, m: float, v: float) -> float:
        return dm_dt * (m * v)
