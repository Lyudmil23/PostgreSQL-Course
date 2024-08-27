-- 1st 
SELECT
    p.name AS product_name,
    ROUND(AVG(p.price), 2) AS average_price,
    COUNT(f.product_id) AS total_feedbacks
FROM products AS p
JOIN feedbacks AS f
ON p.id = f.product_id
WHERE p.price > 15
GROUP BY p.name
HAVING COUNT(f.product_id) > 1
ORDER BY total_feedbacks, average_price DESC
;



-- 2nd 
SELECT
    p.name AS product_name,
    ROUND(AVG(p.price), 2) AS average_price,
    COUNT(f.id) AS total_feedbacks
FROM products AS p
JOIN feedbacks AS f ON p.id = f.product_id
WHERE p.price > 15
GROUP BY p.id
HAVING COUNT(f.id) > 1
ORDER BY total_feedbacks, average_price DESC;