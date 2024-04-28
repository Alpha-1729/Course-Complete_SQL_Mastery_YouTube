-- Order By Clause
/*
 >>>> When we select all rows from a table, it is sorted by the primary key.
 
 >>>> Order By can be applied for columns not in the select clause.
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
-- Order by single column.
-- Default sort order is ascending.
SELECT
    *
FROM
    customers
ORDER BY
    first_name;

SELECT
    *
FROM
    customers
ORDER BY
    first_name DESC;

-- Order by multiple column.
SELECT
    *
FROM
    customers
ORDER BY
    state,
    first_name;

-- Order By also work for alias also.
SELECT
    first_name,
    10 + 1 AS points
FROM
    customers
ORDER BY
    points,
    first_name;

-- Sorting by column position.
SELECT
    first_name,
    last_name
FROM
    customers
ORDER BY
    1,
    2;

-- Order By with an arithmetic expression.
SELECT
    *
FROM
    order_items
WHERE
    order_id = 2
ORDER BY
    (quantity * unit_price) DESC;