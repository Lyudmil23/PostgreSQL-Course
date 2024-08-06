-- 1st 
CREATE OR REPLACE FUNCTION fn_courses_by_client(
    phone_num VARCHAR(20)
) RETURNS INT
AS
$$
BEGIN
    RETURN(
        SELECT COUNT(*)
        FROM
            clients AS cl
        JOIN
            courses AS co
        ON
            co.client_id = cl.id
        WHERE
            cl.phone_number = phone_num
        );

END;
$$
LANGUAGE plpgsql;

SELECT fn_courses_by_client('(803) 6386812');

-- 2nd 
CREATE OR REPLACE FUNCTION fn_courses_by_client(phone_num VARCHAR(20))
RETURNS INTEGER AS
$$
DECLARE
    course_count INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO course_count
    FROM courses AS co
    JOIN clients AS cl
        ON co.client_id = cl.id
    WHERE cl.phone_number = phone_num;

    RETURN course_count;
END;
$$ LANGUAGE plpgsql;

SELECT fn_courses_by_client('(803) 6386812');