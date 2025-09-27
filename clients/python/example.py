from nktg_law import NKTgClient

client = NKTgClient(x=2.0, v=3.0, m=5.0, dm_dt=0.1)
print("Momentum:", client.momentum())
print("NKTg₁:", client.nktg1())
print("NKTg₂:", client.nktg2())
