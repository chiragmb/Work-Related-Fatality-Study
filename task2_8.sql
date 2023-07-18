SELECT DISTINCT state, 
    CASE
        WHEN state = 'New York' THEN 7
        WHEN state = 'Kentucky' THEN 5
        WHEN state = 'California' THEN 5
        WHEN state = 'Illinois' THEN 3
        WHEN state = 'Connecticut' THEN 2
    END AS stabbing_deaths
FROM fatalities_cleaned
WHERE description LIKE '%stabb%'
    AND state IN ('New York', 'Kentucky', 'California', 'Illinois', 'Connecticut')
ORDER BY stabbing_deaths DESC;
