-- 1st 
CREATE OR REPLACE FUNCTION fn_full_name (
	first_name VARCHAR(50),
	last_name VARCHAR(50)
) RETURNS VARCHAR(101)
AS
$$
DECLARE
	full_name VARCHAR(101);
BEGIN
	full_name := INITCAP(LOWER(first_name)) || ' ' || INITCAP(LOWER(last_name));
	RETURN full_name;
END;
$$
LANGUAGE plpgsql;

SELECT fn_full_name('fred', 'sanford')


-- 2nd 
CREATE OR REPLACE FUNCTION fn_full_name(first_name text, last_name text)
RETURNS text AS $$
BEGIN
    IF first_name IS NULL AND last_name IS NULL THEN
        RETURN NULL;
    ELSIF first_name IS NULL THEN
        RETURN INITCAP(last_name);
    ELSIF last_name IS NULL THEN
        RETURN INITCAP(first_name);
    ELSE
        RETURN CONCAT(INITCAP(first_name), ' ', INITCAP(last_name));
    END IF;
END;
$$ LANGUAGE plpgsql;

SELECT fn_full_name('fred', 'sanford')
