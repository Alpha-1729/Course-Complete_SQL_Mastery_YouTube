-- Compound Join Conditions
/*
 >>>> Composite Primary Key
 In some tables, we need more that one primary key column for actual join.
 In that case, in a table, there will be two or more primary column.
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
USE sql_store;

SELECT
    *
FROM
    order_items oi
    INNER JOIN order_items_note oin ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id;