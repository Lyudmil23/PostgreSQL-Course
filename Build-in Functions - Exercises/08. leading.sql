SELECT
    continent_name,
    TRIM(continent_name) AS trim
FROM continents


SELECT continent_name,
LTRIM(continent_name) AS "trim"
FROM continents
;