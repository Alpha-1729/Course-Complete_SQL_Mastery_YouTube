-- Creating Views
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
 */
USE sql_invoicing;

-- Creating views.
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

-- Querying views.
SELECT
    *
FROM
    sales_by_client;