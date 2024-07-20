-- 1st 
DELETE FROM volunteers_departments
where department_name = 'Education program assistant'
;

-- 2nd 
DELETE FROM volunteers
WHERE department_id = (SELECT id FROM volunteers_departments WHERE department_name = 'Education program assistant');
DELETE FROM volunteers_departments
WHERE department_name = 'Education program assistant'
;

-- 3rd 
DELETE FROM volunteers
WHERE department_id = 2;
DELETE FROM volunteers_departments
WHERE department_name = 'Education program assistant'
;