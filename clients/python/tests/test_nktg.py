from nktg_law import NKTgClient

def test_nktg1():
    client = NKTgClient(x=2, v=3, m=5, dm_dt=0.1)
    assert round(client.nktg1(), 2) == 15.2

def test_nktg2():
    client = NKTgClient(x=2, v=3, m=5, dm_dt=0.1)
    assert round(client.nktg2(), 2) == 3.04
