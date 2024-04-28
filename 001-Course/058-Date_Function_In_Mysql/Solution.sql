-- Date Function In Mysql
/*
>>>>

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_store;

-- Get current date and time.
SELECT NOW();

-- Get current data.
SELECT CURDATE();

-- Get current time.
SELECT CURTIME();

-- Get year, month, day, hour, minute, second from current date.
SELECT
    YEAR(NOW()),
    MONTH(NOW()),
    DAY(NOW()),
    HOUR(NOW()),
    MINUTE(NOW()),
    SECOND(NOW());

-- Get dayname and month name.
SELECT
    DAYNAME(NOW()),
    MONTHNAME(NOW());

-- EXTRACT function.
SELECT EXTRACT(YEAR FROM NOW());
SELECT EXTRACT(MONTH FROM NOW());
SELECT EXTRACT(DAY FROM NOW());

-- Select order placed in current year.
SELECT *
FROM orders
WHERE YEAR(order_date) = YEAR(NOW());
