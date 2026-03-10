from nktg_law import NKTgClient

# Khởi tạo client với các tham số: x=2.0, v=3.0, m=5.0, dm_dt=0.1
client = NKTgClient(x=2.0, v=3.0, m=5.0, dm_dt=0.1)

print("Momentum:", client.momentum())  # Output: 15.0
print("NKTg₁:", client.nktg1())        # Output: 30.0 (x * momentum)
print("NKTg₂:", client.nktg2())        # Output: 1.5  (dm_dt * momentum)
