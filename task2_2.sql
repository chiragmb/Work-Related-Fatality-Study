SELECT
    incident_year,
    fatalities AS n_fatalities,
    LAG(fatalities) OVER (ORDER BY incident_year) AS previous_year,
    ROUND(((fatalities - LAG(fatalities) OVER (ORDER BY incident_year)) / LAG(fatalities) OVER (ORDER BY incident_year)) * 100) AS year_to_year
FROM
    (
        SELECT
            YEAR(incident_date) AS incident_year,
            COUNT(*) AS fatalities
        FROM
            fatalities_cleaned
        WHERE
            YEAR(incident_date) != 2022
        GROUP BY
            incident_year
    ) AS subquery
ORDER BY
    incident_year;
