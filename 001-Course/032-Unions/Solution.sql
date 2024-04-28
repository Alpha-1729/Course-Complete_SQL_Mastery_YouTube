-- Unions
/*
>>>> Unions is used to combine rows from multiple tables into one.
Column count in each query should be same in union operations.
The column name in the result set after the union is the column of the first query in union.
>>>>

>>>>

>>>>

>>>>

>>>>
 */
-- Unions
SELECT
    order_id,
    order_date,
    'Active' AS status
FROM
    orders
WHERE
    order_date >= '2019-01-01'
UNION
SELECT
    order_id,
    order_date,
    'Archived' AS status
FROM
    orders
WHERE
    order_date < '2019-01-01'
ORDER BY -- The Order By is applied to the entire records after the union operation.
    status ASC;