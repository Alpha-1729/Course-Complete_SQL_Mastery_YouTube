-- Between Operator
/*
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
USE sql_store;

-- BETWEEN Operator
-- Both lower and upper values are inclusive.
SELECT
    *
FROM
    customers
WHERE
    points BETWEEN 1000
    AND 3000;

SELECT
    *
FROM
    customers
WHERE
    birth_date BETWEEN '1990-01-01'
    AND '2000-01-01';