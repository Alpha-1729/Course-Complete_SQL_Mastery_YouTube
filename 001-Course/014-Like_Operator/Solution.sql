-- Like Operator
/*
 >>>> Like operator is used for pattern matching.
 % -> Any number of characters.
 _ -> Only single characters matching.
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>> 
 */
-- Return results where last_name starts with 'a'
SELECT
    *
FROM
    customers
WHERE
    last_name LIKE 'a%';

-- Return results where last_name have 'jam' in it.
SELECT
    *
FROM
    customers
WHERE
    last_name LIKE '%jam%';

-- Return results where last_name ends with 'y'.
SELECT
    *
FROM
    customers
WHERE
    last_name LIKE '%y';

-- Return results where last_name have 6 character and start with b and ends with y.
SELECT
    *
FROM
    customers
WHERE
    last_name LIKE 'b____y';

-- NOT LIKE operator
-- Returns all entry that have phone number not ends with 9.
SELECT
    *
FROM
    customers
WHERE
    phone NOT LIKE '%9';