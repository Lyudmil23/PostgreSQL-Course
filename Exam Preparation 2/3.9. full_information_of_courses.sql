SELECT
    a.name AS address,
    CASE
        WHEN EXTRACT(HOUR FROM start) BETWEEN 6 AND 20 THEN 'Day'
        ELSE 'Night'
    END AS day_time,
    co.bill,
    cl.full_name,
    ca.make,
    ca.model,
    cate.name
FROM courses AS co
JOIN addresses AS a
ON co.from_address_id = a.id
JOIN clients AS cl
ON co.client_id = cl.id
JOIN cars AS ca
ON co.car_id = ca.id
JOIN categories as cate
ON ca.category_id = cate.id
ORDER BY co.id
;