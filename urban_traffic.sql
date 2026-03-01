-- Total trips
SELECT COUNT(*) FROM traffic;

-- Average duration
SELECT AVG(trip_duration_min) FROM traffic;

-- Peak traffic hour
SELECT pickup_hour, COUNT(*) AS total_trips
FROM traffic
GROUP BY pickup_hour
ORDER BY total_trips DESC;

-- Average duration by hour
SELECT pickup_hour, AVG(trip_duration_min) AS avg_duration
FROM traffic
GROUP BY pickup_hour;

-- Trips by day
SELECT pickup_day, COUNT(*) AS total_trips
FROM traffic
GROUP BY pickup_day;
