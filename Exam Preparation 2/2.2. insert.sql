-- 1st 
INSERT INTO clients(full_name, phone_number)

SELECT
    CONCAT(first_name, ' ', last_name) AS full_name,
    '(088) 9999' || id * 2 AS phone_number
FROM drivers
WHERE id BETWEEN 10 AND 20
;

-- 2nd 
INSERT INTO clients(full_name, phone_number)
SELECT
    CONCAT(d.first_name, ' ', d.last_name),
    CONCAT('(088) 9999', d.id * 2)
FROM drivers AS d
WHERE d.id BETWEEN 10 AND 20
;