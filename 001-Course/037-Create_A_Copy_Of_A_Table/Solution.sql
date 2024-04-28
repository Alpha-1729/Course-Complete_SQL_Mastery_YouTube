-- Create A Copy Of A Table
/*
>>>>

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_store;

-- Method 1.
-- In this method newly created table doesn't have the primary key and auto increment property.
CREATE TABLE
    orders_archived AS
SELECT
    *
FROM
    orders;

-- Method 2
-- Using select statement as sub query for a insert statement.
INSERT INTO
    orders_archived
SELECT
    *
FROM
    orders
WHERE
    order_date < '2019-01-01';