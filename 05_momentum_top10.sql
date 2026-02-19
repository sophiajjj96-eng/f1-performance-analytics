WITH recent_races AS (
  SELECT raceId
  FROM races
  ORDER BY year DESC, round DESC
  LIMIT 5
),
career_stats AS (
  SELECT
    driverId,
    AVG(points) AS career_avg_points
  FROM results
  GROUP BY driverId
),
recent_stats AS (
  SELECT
    driverId,
    AVG(points) AS recent_avg_points
  FROM results
  WHERE raceId IN (SELECT raceId FROM recent_races)
  GROUP BY driverId
)
SELECT
  d.forename || ' ' || d.surname AS driver_name,
  ROUND(c.career_avg_points, 2) AS career_avg_points,
  ROUND(r.recent_avg_points, 2) AS recent_avg_points,
  ROUND(r.recent_avg_points - c.career_avg_points, 2) AS momentum_score
FROM recent_stats r
JOIN career_stats c
  ON r.driverId = c.driverId
JOIN drivers d
  ON r.driverId = d.driverId
WHERE c.career_avg_points > 2
ORDER BY momentum_score DESC
LIMIT 10;
