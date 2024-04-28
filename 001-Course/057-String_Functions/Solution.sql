-- String Functions
/*
>>>> String Functions.
Reference Link: https://dev.mysql.com/doc/refman/8.0/en/string-functions.html

>>>>

>>>>

>>>>

>>>>

>>>>
 */
SELECT LENGTH('sky');

SELECT UPPER('sky');

SELECT LOWER('sky');

SELECT LTRIM('  sky');

SELECT RTRIM('sky  ');

SELECT TRIM('  sky  ');

SELECT LEFT('KinderGarden', 4);

SELECT RIGHT('KinderGarden', 6);

-- OUT -> Garden
SELECT SUBSTRING('KinderGarden', 7, 6);

-- OUT -> Garden
SELECT SUBSTRING('KinderGarden', 7);

-- Returns the first occurrence of character.
-- Searching is case insensitive.
-- If character is not found, returns 0.
SELECT LOCATE('n', 'KinderGarden');

-- OUT -> Garden
SELECT LOCATE('Garden', 'KinderGarden');

SELECT REPLACE('KinderGarden', 'Garden', 'Joy');

SELECT CONCAT('first', ' ', 'last');
