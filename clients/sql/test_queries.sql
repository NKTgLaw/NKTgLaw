-- Test: Check NKTg₁ for object id = 1 using Product Logic (x * p)
-- Input: x=2.0, v=3.0, m=5.0, dm_dt=0.1
SELECT ROUND(x * (m * v), 2) AS expected_nktg1
FROM nktg_objects 
WHERE id = 1;

-- Expected Output: 30.0

-- Test: Check NKTg₂ for object id = 1 using Product Logic (dm_dt * p)
SELECT ROUND(dm_dt * (m * v), 2) AS expected_nktg2
FROM nktg_objects 
WHERE id = 1;

-- Expected Output: 1.5
