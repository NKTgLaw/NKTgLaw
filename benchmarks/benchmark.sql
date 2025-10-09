-- Run NKTg₁ computation 100,000 times
WITH RECURSIVE counter(x) AS (
  SELECT 1
  UNION ALL
  SELECT x + 1 FROM counter WHERE x < 100000
)
SELECT COUNT(*) FROM counter, nktg_objects
WHERE (m * v + dm_dt * x) IS NOT NULL;
