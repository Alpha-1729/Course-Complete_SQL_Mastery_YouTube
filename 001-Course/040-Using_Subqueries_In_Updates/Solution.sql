-- Using Subqueries In Updates
/*
>>>>

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

-- If there is only one row in sub query.
UPDATE invoices
SET
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE
    client_id = (
        SELECT
            client_id
        FROM
            clients
        WHERE
            name = 'Myworks'
    );

-- If there are multiple rows in the sub query.
UPDATE invoices
SET
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE
    client_id IN (
        SELECT
            client_id
        FROM
            clients
        WHERE
            state IN ('CA', 'BY')
    );