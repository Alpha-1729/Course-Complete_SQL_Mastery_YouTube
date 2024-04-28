-- If Function
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
 */

USE sql_store;

SELECT
    order_id,
    order_date,
    IF(YEAR(order_date) = YEAR(NOW()), 'Active', 'Archived') AS category
FROM orders;