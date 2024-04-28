-- The With Option Check Clause
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
 */
USE sql_invoicing;

-- When you update or delete data in a view, some of the rows in the view will be disappeared.
-- This is the default behavior of views.
-- This is due to the condition added in the view while creating the view.
-- If the rows doesn't meed the condition mentioned in the where clause, that rows will be excluded from the view.
-- To avoid this situation use WITH CHECK OPTION at the end of the view, while creating the view.
-- By this, we get an error while updating or deleting the row.
UPDATE invoices_with_balances
SET
    payment_total = invoice_total
WHERE
    invoice_id = 2;

-- WITH CHECK OPTION
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
    (invoice_total - payment_total) > 0
WITH
    CHECK OPTION;