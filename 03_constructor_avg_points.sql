SELECT
  c.name AS constructor_name,
  COUNT(r.raceId) AS races_entered,
  ROUND(SUM(r.points), 2) AS total_points,
  ROUND(AVG(r.points), 2) AS avg_points_per_race
FROM results r
JOIN constructors c
  ON r.constructorId = c.constructorId
GROUP BY constructor_name
HAVING races_entered > 100
ORDER BY avg_points_per_race DESC
LIMIT 20;
