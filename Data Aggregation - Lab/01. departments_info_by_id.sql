SELECT
    department_id,
    COUNT(id) AS employee_count
FROM employees
GROUP BY department_id
ORDER BY department_id
;



SELECT
	department_id,
	count(department_id)
FROM employees
GROUP BY department_id
ORDER BY department_id
;