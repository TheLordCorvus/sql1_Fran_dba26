SET PAGESIZE 100

SELECT * FROM jokes;

DESC system.jokes;

SELECT
    category,
    rating,
    joke
FROM jokes
WHERE rating < 5
ORDER BY rating DESC, category
FETCH FIRST 5 ROWS ONLY;


-- TODO: for you
-- 1. Find all jokes that have rating 6-8
SELECT
    joke,
    rating
FROM jokes
WHERE rating BETWEEN 6 AND 8;

-- 2. filter out all DBA jokes

SELECT 
    joke,
    category,
    rating
FROM jokes
WHERE category = 'DBA'
FETCH FIRST 5 ROWS ONLY;


-- 3. filter out all DBA and Linux jokes with rating over 6
SELECT 
    joke,
    category
    rating
FROM jokes
WHERE category IN ('DBA', 'Linux') AND rating > 6
FETCH FIRST 5 ROWS ONLY;


EXIT
 
