-- Altering Or Dropping Views
/*
>>>> Updating a view.
Drop the view and create the view again.
>>>> How to view the code for view.
Refer the screenshot attached.
We can also update the view from the same method shown in the image itself.
>>>>
>>>>
>>>>
>>>>
 */
USE sql_invoicing;

-- Altering views.
-- METHOD 1:
DROP VIEW sales_by_client;

CREATE VIEW
    sales_by_client AS
SELECT
    c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
FROM
    clients c
    JOIN invoices i USING (client_id)
GROUP BY
    client_id,
    NAME;

-- METHOD 2:
CREATE OR REPLACE VIEW
    sales_by_client AS
SELECT
    c.client_id,
    c.name,
    SUM(invoice_total) AS total_sales
FROM
    clients c
    JOIN invoices i USING (client_id)
GROUP BY
    client_id,
    NAME;