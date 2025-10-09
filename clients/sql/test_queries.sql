-- Test: Check NKTg₁ for object id = 1
SELECT ROUND(m * v + dm_dt * x, 2) AS expected_nktg1
FROM nktg_objects WHERE id = 1;

-- Expected: 15.2
