-- Ifnull And Coalesce Functions
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
 */

USE sql_store;

-- IFNULL function.
SELECT
    order_id,
    IFNULL(shipper_id, 'Not assigned') AS shipper
FROM orders;

-- COALESCE function.
-- Return first non NULL values in the list.
SELECT
    order_id,
    COALESCE(shipper_id, comments, 'Not assigned') AS shipper
FROM orders;