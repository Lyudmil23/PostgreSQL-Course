SELECT
    r.start_point,
    r.end_point,
    r.leader_id,
    CONCAT(c.first_name, ' ', c.last_name) AS leader_name
FROM routes AS r
    JOIN campers AS c
        ON c.id = r.leader_id
;






SELECT
	r.start_point,
	r.end_point,
	r.leader_id,
	concat(c.first_name, ' ', c.last_name) AS leader_name
FROM campers AS c
	JOIN routes as r
		ON c.id = r.leader_id