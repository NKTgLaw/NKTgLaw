class NKTgClient:
    def __init__(self, x: float, v: float, m: float, dm_dt: float):
        self.x = x
        self.v = v
        self.m = m
        self.dm_dt = dm_dt

    def momentum(self) -> float:
        return self.m * self.v

    def nktg1(self) -> float:
        return self.momentum() + self.dm_dt * self.x

    def nktg2(self) -> float:
        return self.nktg1() / self.m
