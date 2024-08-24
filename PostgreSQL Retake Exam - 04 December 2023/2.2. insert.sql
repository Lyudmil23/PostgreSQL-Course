-- 1st 
CREATE TABLE gift_recipients(
    id SERIAL PRIMARY KEY,
    name VARCHAR(76),
    country_id INTEGER REFERENCES countries ON DELETE CASCADE ON UPDATE CASCADE,
    gift_sent BOOLEAN DEFAULT FALSE
);

INSERT INTO gift_recipients(name, country_id)
SELECT
    CONCAT(first_name, ' ', last_name) AS name,
    country_id
FROM customers;

UPDATE gift_recipients
SET gift_sent = TRUE
WHERE country_id IN (7, 8, 14, 17, 26)
;


-- 2nd 
CREATE TABLE gift_recipients(
    id SERIAL PRIMARY KEY,
    name VARCHAR(75) NOT NULL ,
    country_id INTEGER REFERENCES countries ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    gift_sent BOOLEAN DEFAULT FALSE
);

INSERT INTO gift_recipients(name, country_id)
SELECT
    CONCAT(first_name, ' ', last_name) AS name,
    country_id
FROM customers;

UPDATE gift_recipients
SET gift_sent = TRUE
WHERE country_id IN (7, 8, 14, 17, 26);