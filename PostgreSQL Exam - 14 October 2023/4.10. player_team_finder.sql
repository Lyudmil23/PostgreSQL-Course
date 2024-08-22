-- 1st 
CREATE OR REPLACE PROCEDURE sp_players_team_name(player_name VARCHAR(50), OUT team_name VARCHAR(45))
LANGUAGE plpgsql
AS
$$
DECLARE
    player_id INT;
BEGIN
    SELECT id INTO player_id
    FROM players
    WHERE CONCAT(first_name, ' ', last_name) = player_name;

    IF NOT FOUND THEN
        team_name := 'The player currently has no team';
    ELSE
        SELECT t.name INTO team_name
        FROM players AS p
        LEFT JOIN teams AS t
            ON p.team_id = t.id
        WHERE p.id = player_id;

        IF team_name IS NULL THEN
            team_name := 'The player currently has no team';
        END IF;
    END IF;
END;
$$;


-- 2nd 
CREATE OR REPLACE PROCEDURE sp_players_team_name(player_name VARCHAR(50), OUT team_name VARCHAR(45)) AS
$$
BEGIN
    SELECT
        COALESCE(t.name, 'The player currently has no team')
    INTO
        team_name
    FROM
        players AS p
    LEFT JOIN
        teams AS t ON p.team_id = t.id
    WHERE
        CONCAT(p.first_name, ' ', p.last_name) = player_name;
END;
$$ LANGUAGE plpgsql;