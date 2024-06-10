SELECT
    REPLACE(title,'The', '***')
FROM BOOKS
WHERE LEFT(title, 3) = 'The'
;