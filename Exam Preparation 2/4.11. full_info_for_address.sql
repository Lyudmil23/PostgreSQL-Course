CREATE TABLE search_results (
    id SERIAL PRIMARY KEY,
    address_name VARCHAR(100),
    full_name VARCHAR(100),
    level_of_bill VARCHAR(20),
    make VARCHAR(30),
    condition CHAR(1),
    category_name VARCHAR(50)
);

CREATE OR REPLACE PROCEDURE sp_courses_by_address(address_name VARCHAR(100))
LANGUAGE plpgsql
AS 
$$
BEGIN
    TRUNCATE search_results;

    INSERT INTO search_results (address_name, full_name, level_of_bill, make, condition, category_name)
    SELECT
        a.name,
        cl.full_name,
        CASE
            WHEN cs.bill <= 20 THEN 'Low'
            WHEN cs.bill <= 30 THEN 'Medium'
            ELSE 'High'
        END AS level_of_bill,
        ca.make,
        ca.condition,
        ct.name
    FROM courses AS cs
    JOIN addresses AS a
        ON cs.from_address_id = a.id
    JOIN clients AS cl
        ON cs.client_id = cl.id
    JOIN cars AS ca
        ON cs.car_id = ca.id
    JOIN categories AS ct
        ON ca.category_id = ct.id
    WHERE a.name = address_name
    ORDER BY ca.make, cl.full_name;
END;
$$;

CALL sp_courses_by_address('700 Monterey Avenue')

SELECT * FROM search_results;
