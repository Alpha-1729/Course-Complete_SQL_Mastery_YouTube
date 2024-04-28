-- Natural Joins
/*
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
-- Natural Joins.
-- Look for columns with same name.
SELECT
    o.order_id,
    c.first_name
FROM
    orders o NATURAL
    JOIN customers c;