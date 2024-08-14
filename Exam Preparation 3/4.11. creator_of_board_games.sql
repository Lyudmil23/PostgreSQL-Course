-- 1st 
CREATE OR REPLACE FUNCTION fn_creator_with_board_games(firs_name VARCHAR(30))
RETURNS INTEGER AS
$$
BEGIN
    RETURN (SELECT COUNT(*)
            FROM creators c
            JOIN creators_board_games cbg ON c.id = cbg.creator_id
            WHERE c.first_name = firs_name);
END;
$$ LANGUAGE plpgsql;
SELECT fn_creator_with_board_games('Alexander')


-- 2nd 
CREATE OR REPLACE FUNCTION fn_creator_with_board_games(creator_first_name VARCHAR(30))
RETURNS INTEGER AS
$$
DECLARE
    total_games INTEGER;
BEGIN
    SELECT COUNT(b.id)
    INTO total_games
    FROM creators AS c
    JOIN creators_board_games AS cbg
        ON c.id = cbg.creator_id
    JOIN board_games AS b
        ON cbg.board_game_id = b.id
    WHERE c.first_name = creator_first_name;
    RETURN total_games;
END;
$$ LANGUAGE plpgsql;

SELECT fn_creator_with_board_games('Alexander')