-- 1st 
UPDATE coaches
SET salary = salary * coach_level
WHERE first_name LIKE 'C%'
AND id IN (
    SELECT coach_id FROM players_coaches
);

-- 2nd 
UPDATE coaches
SET salary = salary * coach_level
WHERE first_name LIKE 'C%' AND (SELECT
                                    COUNT(coach_id) >= 1
                                FROM players_coaches
)
;