-- 06_final_driver_kpi_table.sql
-- Creates a dashboard-ready driver KPI summary table for Tableau:
-- - career totals
-- - career avg points
-- - recent 5-race avg points
-- - momentum score
-- - overperformance score (grid - finish)

DROP TABLE IF EXISTS driver_kpi_summary;

CREATE TABLE driver_kpi_summary AS
WITH recent_races AS (
  SELECT raceId
  FROM races
  ORDER BY year DESC, round DESC
  LIMIT 5
),
career_stats AS (
  SELECT
    r.driverId,
    COUNT(r.raceId) AS races_entered,
    SUM(r.points) AS total_points,
    AVG(r.points) AS career_avg_points,
    AVG(r.grid - r.position) AS overperformance_score
  FROM results r
  WHERE r.position IS NOT NULL
    AND r.grid IS NOT NULL
  GROUP BY r.driverId
),
recent_stats AS (
  SELECT
    r.driverId,
    AVG(r.points) AS recent_avg_points
  FROM results r
  WHERE r.raceId IN (SELECT raceId FROM recent_races)
  GROUP BY r.driverId
)
SELECT
  d.driverId,
  d.forename || ' ' || d.surname AS driver_name,
  c.races_entered,
  ROUND(c.total_points, 2) AS total_points,
  ROUND(c.career_avg_points, 2) AS career_avg_points,
  ROUND(r.recent_avg_points, 2) AS recent_avg_points,
  ROUND(r.recent_avg_points - c.career_avg_points, 2) AS momentum_score,
  ROUND(c.overperformance_score, 2) AS overperformance_score
FROM career_stats c
LEFT JOIN recent_stats r
  ON c.driverId = r.driverId
JOIN drivers d
  ON c.driverId = d.driverId
WHERE c.races_entered > 30;
