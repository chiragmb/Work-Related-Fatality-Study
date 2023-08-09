SELECT state, COUNT(*) AS shooting_deaths
FROM fatalities_cleaned
WHERE description LIKE '%shot%'
GROUP BY state
ORDER BY shooting_deaths DESC
LIMIT 10;
