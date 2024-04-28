-- Group By Clause
/*
>>>>

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

-- Group By single column.
-- Total sales per client.
SELECT
    client_id,
    SUM(invoice_total) AS total_sales
FROM
    invoices
GROUP BY
    client_id
ORDER BY
    total_sales DESC;

-- Group by multiple columns.
-- Total sales per city and states.
SELECT
    state,
    city,
    SUM(invoice_total) AS total_sales
FROM
    invoices i
    INNER JOIN clients USING (client_id)
GROUP BY
    state,
    city
ORDER BY
    total_sales DESC;