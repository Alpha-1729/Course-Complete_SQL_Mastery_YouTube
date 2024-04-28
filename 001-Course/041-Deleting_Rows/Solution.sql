-- Deleting Rows
/*
>>>>

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

-- Delete all records in a table.
DELETE FROM invoices;

-- Delete specific records.
DELETE FROM invoices
WHERE
    invoice_id = 1;

-- Using sub query in delete.
DELETE FROM invoices
WHERE
    client_id = (
        SELECT
            client_id
        FROM
            clients
        WHERE
            name = 'Myworks'
    );