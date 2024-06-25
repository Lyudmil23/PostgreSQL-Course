SELECT
	count(CASE department_id WHEN 1 THEN 1 ELSE NULL END) "Engineering",
	count(CASE department_id WHEN 2 THEN 1 ELSE NULL END) "Tool Design",
	count(CASE department_id WHEN 3 THEN 1 ELSE NULL END) "Sales",
	count(CASE department_id WHEN 4 THEN 1 ELSE NULL END) "Marketing",
	count(CASE department_id WHEN 5 THEN 1 ELSE NULL END) "Purchasing",
	count(CASE department_id WHEN 6 THEN 1 ELSE NULL END) "Reserach and Development",
	count(CASE department_id WHEN 7 THEN 1 ELSE NULL END) "Production"
FROM employees
;