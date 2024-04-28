-- Subqueries
/*
>>>>

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_store;

--  Find product that are more expensive than Lettuce (id = 3);
SELECT
    *
FROM
    products
WHERE
    unit_price > (
        SELECT
            unit_price
        FROM
            products
        WHERE
            product_id = 3
    );