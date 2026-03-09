SELECT
  c.name AS constructor_name,
  ROUND(SUM(r.points), 1) AS total_points,
  ROUND(AVG(r.points), 2) AS avg_points_per_race
FROM results r
JOIN races ra
  ON r.raceId = ra.raceId
JOIN constructors c
  ON r.constructorId = c.constructorId
WHERE ra.year >= 2014
GROUP BY constructor_name
ORDER BY avg_points_per_race DESC
LIMIT 10;
