import requests

BASE_URL = "http://localhost:8080/api"

def get_momentum(mass: float, velocity: float) -> dict:
    response = requests.post(f"{BASE_URL}/momentum", json={
        "mass": mass,
        "velocity": velocity
    })
    return response.json()

def get_nktg1(x: float, momentum: float) -> dict:
    response = requests.post(f"{BASE_URL}/nktg1", json={
        "x": x,
        "momentum": momentum
    })
    return response.json()

def get_nktg2(dm_dt: float, momentum: float) -> dict:
    response = requests.post(f"{BASE_URL}/nktg2", json={
        "dm_dt": dm_dt,
        "momentum": momentum
    })
    return response.json()
