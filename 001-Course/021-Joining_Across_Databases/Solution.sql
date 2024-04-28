-- Joining Across Databases
/*
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
-- Joins across multiple tables.
-- Here sql_store and sql_inventory are different database.
-- You don't have to prefix the database name, If you are in the same database.
SELECT
    *
FROM
    sql_store.order_items oi
    INNER JOIN sql_inventory.product_items pi ON pi.product_id = oi.product_id;