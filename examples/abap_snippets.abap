* ABAP: programming language for SAP enterprise systems
DATA: x TYPE f VALUE 2.0,
      v TYPE f VALUE 3.0,
      m TYPE f VALUE 5.0,
      dm_dt TYPE f VALUE 0.1,
      p TYPE f,
      NKTg1 TYPE f,
      NKTg2 TYPE f.

p = m * v.
NKTg1 = x * p.
NKTg2 = dm_dt * p.
WRITE: / 'p=', p, 'NKTg1=', NKTg1, 'NKTg2=', NKTg2.
