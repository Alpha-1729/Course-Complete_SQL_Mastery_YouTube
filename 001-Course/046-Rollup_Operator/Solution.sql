-- Rollup Operator
/*
>>>> ROLLUP operator only applies to columns with aggregate values.
ROLLUP operator calculates summary for each group and entire result set.
When you use the ROLLUP operator, you cannot use alias(Use actual column name) in the GROUP BY clause.
>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

-- Example 1
SELECT
    client_id,
    SUM(invoice_total) AS total_sales
FROM
    invoices
GROUP BY
    client_id
WITH
    ROLLUP;

-- Example 2
SELECT
    state,
    city,
    SUM(invoice_total) AS total_sales
FROM
    invoices i
    JOIN clients c USING (client_id)
GROUP BY
    state,
    city
WITH
    ROLLUP;