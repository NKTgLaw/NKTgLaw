# Cython: Python with C-like performance
def calculate():
    cdef double x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1
    cdef double p = m * v
    cdef double NKTg1 = x * p
    cdef double NKTg2 = dm_dt * p
    print(f"p={p} NKTg1={NKTg1} NKTg2={NKTg2}")
