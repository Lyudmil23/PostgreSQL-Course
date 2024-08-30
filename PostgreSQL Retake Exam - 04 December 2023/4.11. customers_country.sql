-- 1st 
CREATE OR REPLACE PROCEDURE sp_customer_country_name(
    IN customer_full_name VARCHAR(50),
    OUT country_name VARCHAR(50)
)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT c.name
    INTO country_name
    FROM customers AS cust
    JOIN countries AS c
        ON cust.country_id = c.id
    WHERE cust.first_name || ' ' || cust.last_name = customer_full_name;
END;
$$;


-- 2nd 
CREATE OR REPLACE PROCEDURE sp_customer_country_name(
    IN customer_full_name VARCHAR(50),
    OUT country_name VARCHAR(50)
)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT 
        c."name"
    INTO 
        country_name
    FROM 
        customers AS cust
    LEFT JOIN 
        countries AS c 
        ON cust.country_id = c."id"
    WHERE 
        CONCAT_WS(' ', cust.first_name, cust.last_name) = customer_full_name;
END;
$$;


-- CAN COMPARE BOTH OF THEM HAVE TO FIX THE WRONG ONE  

CREATE OR REPLACE PROCEDURE sp_customer_country_name(
    IN customer_full_name VARCHAR(50),
    OUT country_name VARCHAR(50)
)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT c.name
    INTO country_name
    FROM customers AS cust
    JOIN countries AS c
        ON cust.country_id = c.id
    WHERE cust.first_name || ' ' || cust.last_name = customer_full_name;
END;
$$;


-- wrong one
CREATE OR REPLACE PROCEDURE sp_customer_country_name(customer_full_name VARCHAR(50))
LANGUAGE plpgsql
AS $$
DECLARE
    customer_country VARCHAR(50);
BEGIN
    SELECT c.name
    INTO customer_country
    FROM customers AS cust
    LEFT JOIN countries c ON cust.country_id = c.id
    WHERE cust.first_name || ' ' || cust.last_name = customer_full_name;
END;
$$;