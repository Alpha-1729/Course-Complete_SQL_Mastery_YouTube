-- Subqueries Vs Joins
/*
>>>>

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

-- Find clients without invoices.
-- Using sub query.
SELECT
    *
FROM
    clients
WHERE
    client_id NOT IN (
        SELECT DISTINCT
            client_id
        FROM
            invoices
    );

-- Using join.
SELECT
    *
FROM
    clients
    LEFT JOIN invoices USING (client_id)
WHERE
    invoice_id IS NULL;