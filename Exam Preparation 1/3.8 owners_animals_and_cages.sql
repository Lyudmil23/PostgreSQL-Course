-- 1st 
SELECT
    CONCAT_WS(' ', o.name, '-', a.name) AS "owners - animals",
    o.phone_number,
    ac.cage_id
FROM owners AS o
JOIN animals AS a
ON o.id = a.owner_id
JOIN animals_cages AS ac
ON a.id = ac.animal_id
JOIN animal_types AS at
ON a.animal_type_id = at.id
WHERE at.animal_type = 'Mammals'
ORDER BY o.name, a.name DESC
;

-- 2nd 
SELECT
    CONCAT(o.name, ' - ', a.name) AS "owners - animals",
    o.phone_number,
    ac.cage_id
FROM owners AS o
    JOIN animals AS a
        ON o.id = a.owner_id
            JOIN animals_cages AS ac
                ON ac.animal_id = a.id
                    JOIN animal_types AS at
                        ON a.animal_type_id = at.id
WHERE at.animal_type = 'Mammals'
ORDER BY o.name, a.name DESC
;