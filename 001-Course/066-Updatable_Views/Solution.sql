-- Updatable Views
/*
>>>> Updatable Views
We can use INSERT, DELETE and UPDATE in views in only under certain conditions.
If the views does not have these keywords, it is called an updatable views.
DISTINCT
Aggregate functions  (MIN, MAX, SUM, ...)
GROUP BY / HAVING
UNION
>>>> For inserting in updatable views
It should contain all the columns in the underlying table.
>>>>
>>>>
>>>>
>>>>
 */
USE sql_invoicing;

CREATE OR REPLACE VIEW
    invoices_with_balances AS
SELECT
    invoice_id,
    number,
    client_id,
    invoice_total,
    invoice_total - payment_total AS balance,
    payment_total,
    invoice_date,
    payment_date,
    due_date
FROM
    invoices
WHERE
    -- We cannot write alias here.
    (invoice_total - payment_total) > 0;

-- Delete rows from view.
DELETE FROM invoices_with_balances
WHERE
    invoice_id = 1;

-- Update rows in view.
UPDATE invoices_with_balances
SET
    due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE
    invoice_id = 2;