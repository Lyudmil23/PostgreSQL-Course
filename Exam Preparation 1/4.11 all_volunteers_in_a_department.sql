CREATE OR REPLACE FUNCTION fn_get_volunteers_count_from_department(searched_volunteers_department VARCHAR(30))
RETURNS INT AS
$$
    DECLARE
        volunteer INT;
        BEGIN
            SELECT
                count(*)
            INTO volunteer
            FROM volunteers as v
                JOIN volunteers_departments as vd
                    ON v.department_id = vd.id
            WHERE vd.department_name = searched_volunteers_department;
            RETURN volunteer;
        END;
$$
LANGUAGE plpgsql

SELECT fn_get_volunteers_count_from_department('Education program assistant')