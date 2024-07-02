-- 1st 
SELECT 
	mountain_range,
	peak_name,
	elevation
FROM peaks
JOIN mountains
ON peaks.mountain_id = mountains.id
WHERE mountain_range LIKE '%Rila%'
ORDER BY elevation DESC;



-- 2nd 
SELECT
    m.mountain_range,
    p.peak_name,
    p.elevation
FROM mountains AS m
    JOIN peaks AS p
        ON m.id = p.mountain_id
WHERE m.mountain_range = 'Rila'
ORDER BY p.elevation DESC