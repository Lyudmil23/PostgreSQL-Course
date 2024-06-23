SELECT
    last_name,
    COUNT(notes) AS notes_with_dunbledore
FROM wizard_deposits
WHERE notes LIKE '%Dumbledore%'
GROUP BY last_name
;