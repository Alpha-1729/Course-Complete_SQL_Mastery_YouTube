-- Numeric Functions
/*
>>>> Numeric functions in MySQL.
Reference Link: https://dev.mysql.com/doc/refman/8.3/en/numeric-functions.html

>>>>

>>>>

>>>>

>>>>

>>>>
 */
-- ROUND functions.
-- OUT 5
SELECT ROUND(5.3);

-- OUT 5.3
SELECT ROUND(5.345, 2);

-- TRUNCATE function.
-- Remove the excess from the decimal.
-- OUT 5.73
SELECT TRUNCATE(5.7345, 2);

-- CEILING function.
-- OUT 6
SELECT CEILING(5.7);

-- FLOOR function.
-- OUT 5
SELECT FLOOR(5.7);

-- ABS function.
-- OUT 5.2
SELECT CEILING(-5.2);

-- RAND function.
-- Generate a floating point number between 0 and 1.
SELECT RAND();
