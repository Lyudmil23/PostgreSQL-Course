-- 1st 
SELECT c.id,
       c.first_name || ' ' || c.last_name AS creator_name,
       c.email
FROM creators AS c
LEFT JOIN creators_board_games cbg
ON c.id = cbg.creator_id
WHERE cbg.board_game_id IS NULL
ORDER BY c.first_name, c.last_name;

-- 2nd 
SELECT c.id,
       CONCAT(first_name, ' ', last_name) AS creator_name,
       c.email
FROM creators AS c
LEFT JOIN creators_board_games cbg
ON c.id = cbg.creator_id
WHERE cbg.board_game_id IS NULL
ORDER BY last_name
;

-- 3rd
SELECT
    id,
    CONCAT(c.first_name, ' ', c.last_name) AS creator_name,
    c.email
FROM creators AS c
LEFT JOIN creators_board_games AS cbg
ON c.id = cbg.creator_id
WHERE cbg.creator_id IS NULL
ORDER BY creator_name
;