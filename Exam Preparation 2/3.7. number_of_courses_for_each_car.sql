-- 1st 
SELECT
    c.id AS car_id,
    c.make,
    c.mileage,
    COUNT(co.id) AS count_of_courses,
    ROUND(AVG(co.bill), 2) AS average_bill
FROM cars AS c
    LEFT JOIN courses as co
        ON c.id = co.car_id
GROUP BY c.id
HAVING COUNT(co.id) <> 2
ORDER BY count_of_courses DESC, c.id


-- 2nd 
SELECT
    c.id AS car_id
    c.make,
    c.mileage,
    COUNT(car_id) AS count_of_courses,
    ROUND(AVG(bill),2) AS average_bill
FROM cars AS c
LEFT JOIN courses AS co
ON c.id = co.car_id
GROUP BY c.id, c.make, c.mileage
HAVING COUNT(car_id) <> 2
ORDER BY count_of_courses DESC, c.id
;
