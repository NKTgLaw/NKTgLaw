import requests

def compute_nktg(x: float, v: float, m: float, dm_dt: float):
    """
    Sends a POST request to the NKTg Law API to compute physical quantities.
    Expects the API to follow Product Logic: 
    NKTg1 = x * (m * v)
    NKTg2 = dm_dt * (m * v)
    """
    payload = {"x": x, "v": v, "m": m, "dm_dt": dm_dt}
    try:
        r = requests.post("http://localhost:8080/nktg", json=payload)
        r.raise_for_status()
        return r.json()
    except requests.exceptions.RequestException as e:
        return {"error": str(e)}
