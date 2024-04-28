-- Subquery In Operator
/*
>>>>

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_store;

-- Find the products that have never been ordered.
SELECT
    *
FROM
    products
WHERE
    product_id NOT IN (
        SELECT DISTINCT
            product_id
        FROM
            order_items
    );