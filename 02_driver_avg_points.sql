SELECT
  d.forename || ' ' || d.surname AS driver_name,
  COUNT(r.raceId) AS races_entered,
  ROUND(SUM(r.points), 1) AS total_points,
  ROUND(AVG(r.points), 2) AS avg_points_per_race
FROM results r
JOIN drivers d
  ON r.driverId = d.driverId
GROUP BY driver_name
HAVING races_entered > 50
ORDER BY avg_points_per_race DESC
LIMIT 20;
