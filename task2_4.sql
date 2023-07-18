SELECT 
    day_of_week,
    COUNT(*) AS n_fatalities,
    ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM fatalities_cleaned), 2) AS percentage
FROM 
    fatalities_cleaned
GROUP BY 
    day_of_week
ORDER BY
    n_fatalities DESC;

