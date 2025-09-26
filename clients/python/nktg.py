import requests

def compute_nktg(x, v, m, dm_dt):
    payload = {"x": x, "v": v, "m": m, "dm_dt": dm_dt}
    r = requests.post("http://localhost:8080/nktg", json=payload)
    return r.json()

