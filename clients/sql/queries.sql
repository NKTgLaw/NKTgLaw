-- Momentum = m * v
SELECT id, m * v AS momentum FROM nktg_objects;

-- NKTg₁ = m * v + dm_dt * x
SELECT id, m * v + dm_dt * x AS nktg1 FROM nktg_objects;

-- NKTg₂ = NKTg₁ / m
SELECT id, (m * v + dm_dt * x) / m AS nktg2 FROM nktg_objects;
