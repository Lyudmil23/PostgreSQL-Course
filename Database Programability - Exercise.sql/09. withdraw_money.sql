CREATE OR REPLACE PROCEDURE sp_withdraw_money(
    IN account_id INT,
    IN money_amount NUMERIC(15, 4)
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_current_balance NUMERIC(15, 4);
BEGIN
    -- Get the current balance of the account
    SELECT balance INTO v_current_balance FROM accounts WHERE id = account_id;

    -- Check if the account exists
    IF v_current_balance IS NULL THEN
        RAISE EXCEPTION 'Account with ID % does not exist', account_id;
    END IF;

    -- Check if the account has enough balance to withdraw
    IF v_current_balance < money_amount THEN
        RAISE NOTICE 'Insufficient balance. Cannot withdraw %. Current balance: %', money_amount, v_current_balance;
        RETURN;
    END IF;

    -- Update the account balance by subtracting the withdrawn amount
    UPDATE accounts
    SET balance = balance - money_amount
    WHERE id = account_id;

    -- Commit the transaction
    COMMIT;
END;
$$;


CALL sp_withdraw_money(3, 5050.75);
CALL sp_withdraw_money(6, 5437);
