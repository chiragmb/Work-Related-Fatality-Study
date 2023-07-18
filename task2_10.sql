SELECT YEAR(incident_date) AS incident_year, COUNT(*) AS total_shooting_deaths
FROM fatalities_cleaned
WHERE description LIKE '%shot%'
GROUP BY incident_year
ORDER BY total_shooting_deaths DESC, incident_year DESC;
