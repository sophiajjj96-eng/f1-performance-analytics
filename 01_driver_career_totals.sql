SELECT
  d.forename || ' ' || d.surname AS driver_name,
  COUNT(r.raceId) AS races_entered,
  ROUND(SUM(r.points), 1) AS total_points
FROM results r
JOIN drivers d
  ON r.driverId = d.driverId
GROUP BY driver_name
ORDER BY total_points DESC
LIMIT 20;
