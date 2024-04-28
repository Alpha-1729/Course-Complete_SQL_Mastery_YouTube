-- Inner Join
/*
 >>>> INNER JOIN is same as JOIN keyword.
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
SELECT
    order_id,
    orders.customer_id,
    first_name,
    last_name
FROM
    orders
    JOIN customers ON orders.customer_id = customers.customer_id;

-- Using alias for tables in JOIN.
SELECT
    o.order_id,
    o.customer_id,
    c.first_name,
    c.last_name
FROM
    orders o
    JOIN customers c ON o.customer_id = c.customer_id;