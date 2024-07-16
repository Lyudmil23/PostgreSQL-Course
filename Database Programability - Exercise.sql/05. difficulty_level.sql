-- first 
CREATE OR REPLACE FUNCTION fn_difficulty_level (
	level INT
) RETURNS VARCHAR(50)
AS
$$
DECLARE
	difficulty_level VARCHAR(50);
BEGIN
	IF level <= 40 THEN
		difficulty_level := 'Normal Difficulty';
	ELSIF level BETWEEN 41 AND 60 THEN
		difficulty_level := 'Nightmare Difficulty';
	ELSE
		difficulty_level := 'Hell Difficulty';
	END IF;

	RETURN difficulty_level;
END;
$$
LANGUAGE plpgsql;

SELECT fn_difficulty_level(51);



-- 2nd 
CREATE OR REPLACE FUNCTION fn_difficulty_level(level INT)
RETURNS VARCHAR(50) AS
$$
BEGIN
    IF level <= 40 THEN
        RETURN 'Normal Difficulty';
    ELSIF level BETWEEN 41 AND 60 THEN
        RETURN 'Nightmare Difficulty';
    ELSE
        RETURN 'Hell Difficulty';
    END IF;
END;
$$ LANGUAGE plpgsql;

SELECT fn_difficulty_level(51);
