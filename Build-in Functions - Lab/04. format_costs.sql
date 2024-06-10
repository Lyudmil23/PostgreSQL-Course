-- 1st
SELECT
    title,
    ROUND(cost, 3) AS modified_price
FROM books

-- 2nd 
SELECT 
	title,
	trunc(cost, 3)
FROM books