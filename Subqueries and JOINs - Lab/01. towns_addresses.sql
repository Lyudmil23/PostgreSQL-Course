SELECT
	t.town_id,
	t.name as town_name,
	a.address_text
FROM 
towns as t
	JOIN addresses as a
		ON t.town_id = a.town_id
WHERE t.name in ('San Francisco', 'Sofia', 'Carnation')
ORDER BY t.town_id, a.address_id




SELECT
    t.town_id,
    t.name AS town_name,
    a.address_text
FROM towns as t
INNER JOIN addresses as a
ON t.town_id = a.town_id
WHERE t.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY t.town_id, a.address_id