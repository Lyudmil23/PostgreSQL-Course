-- first 
SELECT 
	mc.country_code,
	COUNT(m.mountain_range) AS mountain_range_count
FROM mountains_countries AS mc
JOIN mountains AS m
ON m.id = mc.mountain_id
WHERE mc.country_code IN ('US', 'RU', 'BG')
GROUP BY mc.country_code
ORDER BY mountain_range_count DESC;




-- second
SELECT
    mc.country_code,
    COUNT(mc.mountain_id) AS mountain_range_count
FROM mountains AS m
JOIN mountains_countries AS mc
ON m.id = mc.mountain_id
GROUP BY mc.country_code
HAVING mc.country_code IN ('US', 'RU', 'BG')
ORDER BY mountain_range_count DESC