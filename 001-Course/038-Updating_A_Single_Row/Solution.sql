-- Updating A Single Row
/*
>>>>

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

UPDATE invoices
SET
    payment_total = 10,
    payment_date = '2019-03-01'
WHERE
    invoice_id = 1;

-- Reverting the changes.
UPDATE invoices
SET
    payment_total = DEFAULT,
    payment_date = NULL
WHERE
    invoice_id = 1;