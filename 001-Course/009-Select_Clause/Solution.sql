-- Select Clause
/*
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
USE sql_store;

-- Select all columns.
SELECT
    *
FROM
    customers;

-- Select only some columns.
SELECT
    first_name,
    last_name
FROM
    customers;

-- Aliases for a column should not have any space in between.
-- To add space in aliases, use single quotes or double quotes or backtick.
SELECT
    last_name,
    first_name AS `first name`,
    points,
    (points + 10) * 100 AS 'discount factor',
    (points / 10) AS "tax",
    (points / 18) AS gst_amount
FROM
    customers;

-- Select unique results.
SELECT
    DISTINCT state
FROM
    customers;