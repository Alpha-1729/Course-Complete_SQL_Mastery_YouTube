-- Updating Multiple Rows
/*
>>>> By default MySQL workbench run in the safe update mode.
You can only update 1 rows at a time.

>>>> How to turn off safe update mode in MySQL workbench.
Go to edit -> preference -> sql editor -> uncheck safe update.
Reopen the MySQL workbench.
Refer the screenshot attached in the resources folder.


>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

UPDATE invoices
SET
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE
    client_id = 3;