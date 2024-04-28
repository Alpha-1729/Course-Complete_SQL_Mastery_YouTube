-- The Using Clause
/*
 >>>> If the column joining two tables are same, we can use the using clause.
 We can use using clause with both inner and outer joins.
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
USE sql_store;

SELECT
    o.order_id,
    c.first_name,
    sh.name AS shipper
FROM
    orders o
    JOIN customers c USING (customer_id)
    LEFT JOIN shippers sh USING (shipper_id);

-- For tables having composite keys.
SELECT
    *
FROM
    order_items oi
    JOIN order_items_note oin USING (order_id, product_id);