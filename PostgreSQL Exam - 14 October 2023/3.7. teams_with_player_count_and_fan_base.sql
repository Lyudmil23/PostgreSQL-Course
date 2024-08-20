-- first 
SELECT
    t.id AS team_id,
    t.name AS team_name,
    COUNT(p.team_id) AS player_count,
    t.fan_base
FROM teams AS t
LEFT JOIN players AS p
ON t.id = p.team_id
WHERE t.fan_base > 30000
GROUP BY t.id, t.name, t.fan_base
ORDER BY player_count DESC, t.fan_base DESC
;


-- 2nd 
SELECT
    t.id AS team_id,
    t.name AS team_name,
    COUNT(p.id) AS player_count,
    t.fan_base
FROM teams AS t
LEFT JOIN players AS p
ON t.id = p.team_id
WHERE t.fan_base > 30000
GROUP BY t.id, t.name, t.fan_base
ORDER BY player_count DESC, t.fan_base DESC


-- 3rd 
SELECT 
    t.id AS team_id,
    t.name AS team_name,
    COUNT(p.id) AS player_count,
    t.fan_base
FROM teams t
LEFT JOIN players p ON t.id = p.team_id
GROUP BY t.id
HAVING t.fan_base > 30000
ORDER BY player_count DESC, t.fan_base DESC;