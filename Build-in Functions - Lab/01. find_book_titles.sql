-- 1st
SELECT
    title
FROM books
WHERE title LIKE 'The%'

-- 2nd
SELECT title
FROM books
WHERE substring(title, 1, 3) = 'The'
;

-- 3rd
SELECT title
FROM books
WHERE left(title, 3) = 'The'
;