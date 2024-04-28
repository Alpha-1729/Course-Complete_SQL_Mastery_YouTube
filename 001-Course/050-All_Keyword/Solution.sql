-- All Keyword
/*
>>>> ALL keyword is useful when the sub query returns more than one rows.

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

-- Select invoices larger than all invoices of client 3.
SELECT *
FROM
    invoices
WHERE
    invoice_total > (
        SELECT MAX(invoice_total)
        FROM
            invoices
        WHERE
            client_id = 3
    );

-- Solve the above problem using ALL keyword.
-- If the invoice value is greater than all values in the subquery, then that rows will be returned.
-- Eg: ALL(150, 130, 167, ...)
SELECT *
FROM
    invoices
WHERE
    invoice_total > ALL(
        SELECT invoice_total
        FROM
            invoices
        WHERE
            client_id = 3
    );
