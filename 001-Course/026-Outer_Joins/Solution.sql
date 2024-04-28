-- Outer Joins
/*
 >>>> LEFT JOIN is same as LEFT OUTER JOIN
 >>>> RIGHT JOIN is same as RIGHT OUTER JOIN
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
-- Customers with orders.
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM
    customers c
    INNER JOIN orders o ON c.customer_id = o.customer_id
ORDER BY
    c.customer_id;

-- If we want to show all customers along with the order details, we use the outer join.
-- We have two out join in SQL -> LEFT JOIN and RIGHT JOIN.
-- LEFT JOIN (All the entries from the left table.)
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM
    customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY
    c.customer_id;

-- RIGHT JOIN (All the entries from the right table.)
SELECT
    c.customer_id,
    c.first_name,
    o.order_id
FROM
    orders o
    RIGHT JOIN customers c ON c.customer_id = o.customer_id
ORDER BY
    c.customer_id;