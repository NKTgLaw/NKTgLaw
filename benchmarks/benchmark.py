import time
from clients.python.nktg_law.nktg import momentum, nktg1, nktg2

def run_benchmark():
    m, v, x, dm_dt = 5.0, 3.0, 2.0, 0.1
    iterations = 1000000

    start = time.time()
    for _ in range(iterations):
        p = momentum(m, v)
        a = nktg1(x, m, v)
        b = nktg2(dm_dt, m, v)
    end = time.time()

    print(f"Python benchmark: {iterations} iterations in {end - start:.2f} seconds")

if __name__ == "__main__":
    run_benchmark()
