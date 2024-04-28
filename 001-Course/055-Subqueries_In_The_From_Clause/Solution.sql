-- Subqueries In The From Clause
/*
>>>> If you use sub query in a from clause, you have to use an alias.

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

SELECT *
FROM
    (
        SELECT
            invoice_id,
            invoice_total,
            (
                SELECT AVG(invoice_total)
                FROM
                    invoices
            ) AS invoice_average,
            invoice_total - (
                SELECT invoice_average
            ) AS difference
        FROM
            invoices
    ) AS p;
