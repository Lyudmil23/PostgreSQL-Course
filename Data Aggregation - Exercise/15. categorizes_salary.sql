SELECT
    job_title,
    CASE
        WHEN AVG(salary) > 45800 THEN 'Good'
        WHEN AVG(salary) BETWEEN 25700 AND 45800 THEN 'Medium'
        ELSE 'Need Improvement'
    END AS category
FROM employees
GROUP BY job_title
ORDER BY category, job_title