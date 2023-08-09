SELECT COUNT(*) AS welding_fatalities
FROM fatalities_cleaned
WHERE description LIKE '%weld%' OR description LIKE '%Weld%';
