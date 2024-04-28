-- Having Clause
/*
>>>> Having Clause
It is used to filter the data after the the data is grouped(GROUP BY).
Columns mentioned in the having clause should be in the select statement.

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

SELECT
    client_id,
    SUM(invoice_total) AS total_sales
FROM
    invoices
GROUP BY
    client_id
HAVING
    total_sales > 500;