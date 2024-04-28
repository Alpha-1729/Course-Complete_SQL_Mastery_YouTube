-- Implicit Join Syntax
/*
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
-- Old query.
-- Explicit Join Syntax
SELECT
    *
FROM
    orders o
    INNER JOIN customers c ON o.customer_id = c.customer_id;

-- The above query can be written using Implicit Join Syntax.
SELECT
    *
FROM
    orders o,
    customers c
WHERE
    o.customer_id = c.customer_id;

-- If we forget the where clause in Implicit Join Syntax, It will result in a cross join.
SELECT
    *
FROM
    orders o,
    customers c;