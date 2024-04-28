-- Cross Join
/*
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
-- Cross Join.
-- Join every records from first table with the every record from second table.
-- Explicit syntax.
SELECT
    c.first_name AS customer,
    p.name AS product
FROM
    customers c
    CROSS JOIN products p
ORDER BY
    c.first_name;

-- Implicit syntax
SELECT
    c.first_name AS customer,
    p.name AS product
FROM
    customers c,
    products p
ORDER BY
    c.first_name;