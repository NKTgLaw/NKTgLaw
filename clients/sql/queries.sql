-- Momentum = m * v
-- Calculation: 5.0 * 3.0 = 15.0
SELECT id, m * v AS momentum FROM nktg_objects;

-- NKTg₁ = x * (m * v)
-- Calculation: 2.0 * 15.0 = 30.0
SELECT id, x * (m * v) AS nktg1 FROM nktg_objects;

-- NKTg₂ = dm_dt * (m * v)
-- Calculation: 0.1 * 15.0 = 1.5
SELECT id, dm_dt * (m * v) AS nktg2 FROM nktg_objects;
