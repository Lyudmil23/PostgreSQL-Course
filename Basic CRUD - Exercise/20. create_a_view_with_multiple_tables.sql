CREATE VIEW view_addresses
AS SELECT
       concat(e.first_name, ' ', e.last_name) AS full_name,
       e.department_id,
       concat(a.number, ' ', a.street) AS address
FROM employees as e, addresses as a
WHERE e.address_id = a.id
ORDER BY address
;
