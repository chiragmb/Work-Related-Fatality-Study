SELECT state, COUNT(*) AS total_fatalities
FROM fatalities_cleaned
GROUP BY state
ORDER BY total_fatalities DESC
LIMIT 5;
