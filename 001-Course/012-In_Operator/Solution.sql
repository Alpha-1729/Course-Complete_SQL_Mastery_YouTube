-- In Operator
/*
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
USE sql_store;

-- IN operator.
SELECT
    *
FROM
    customers
WHERE
    state IN ('VA', 'GA', 'FL');

-- NOT IN operator.
SELECT
    *
FROM
    customers
WHERE
    state NOT IN ('VA', 'GA', 'FL');