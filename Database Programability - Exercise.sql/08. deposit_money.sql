CREATE OR REPLACE PROCEDURE sp_deposit_money(
	account_id INT,
	money_amount NUMERIC(4)
)
AS
$$
BEGIN
	UPDATE
		accounts
	SET
		balance = balance + money_amount
	WHERE
		id = account_id;
END;
$$
LANGUAGE plpgsql;

CALL sp_deposit_money(1, 200);
CALL sp_deposit_money(10, 500);

-- 2nd 
CREATE OR REPLACE PROCEDURE sp_deposit_money(
    IN account_id INT,
    IN money_amount NUMERIC(15, 4)
)
LANGUAGE plpgsql
AS
$$
BEGIN
    UPDATE accounts
    SET balance = balance + money_amount
    WHERE id = account_id;
    COMMIT;
END;
$$;


CALL sp_deposit_money(1, 200)
CALL sp_deposit_money(10, 500)