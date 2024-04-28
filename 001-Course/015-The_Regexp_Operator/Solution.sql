-- The Regexp Operator
/*
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>> REGEXP is used for more complex patterns.
 ^ -> beginning
 $ -> end
 | -> logical or
 [abdf] -> alphabets listed in the brackets.
 [a-f] -> range of character
 */
-- Returns entries where last_name have 'field' in it.
SELECT
    *
FROM
    customers
WHERE
    last_name REGEXP 'field';

-- Returns entries where last_name starts with 'field'.
SELECT
    *
FROM
    customers
WHERE
    last_name REGEXP '^field';

-- Returns entries where last_name ends with 'field'.
SELECT
    *
FROM
    customers
WHERE
    last_name REGEXP 'field$';

-- Returns entries have words 'field', 'mac' or 'rose' in last_name.
SELECT
    *
FROM
    customers
WHERE
    last_name REGEXP 'field|mac|rose';

-- Returns entries where last_name starts with 'field', 'mac' or 'rose'.
SELECT
    *
FROM
    customers
WHERE
    last_name REGEXP '^field|mac|rose';

-- Returns entries where last_name starts with 'mac' or 'rose' and ends with 'field'.
SELECT
    *
FROM
    customers
WHERE
    last_name REGEXP 'field$|mac|rose';

-- Returns entries where last_name have 'ge' or 'ie' or 'me'.
SELECT
    *
FROM
    customers
WHERE
    last_name REGEXP '[gim]e';

-- Returns entries where last_name have g,i,m followed by 'e'.
SELECT
    *
FROM
    customers
WHERE
    last_name REGEXP 'e[gim]';

-- Range of character in the pattern matching.
-- Return entries where last name have a-f character followed by 'e'.
SELECT
    *
FROM
    customers
WHERE
    last_name REGEXP '[a-f]e';