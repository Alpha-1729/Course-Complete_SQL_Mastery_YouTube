-- Aggregate Functions
/*
>>>> Aggregate functions.
Aggregate functions takes a series of values and aggregate them to produce a single value.
Aggregate functions like MAX, MIN not only works with the numeric columns, but also works with dates and string.
Aggregate functions only works on the non NULL values.
If column contains NULL values, aggregate function doesn't count that.
>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

-- Max
SELECT
    MAX(payment_date) AS latest_date,
    min(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total) AS total,
    SUM(invoice_total * 1.1) AS sell_price, -- We can also use expressions here.
    COUNT(invoice_total) AS number_of_invoices,
    COUNT(payment_date) AS number_of_payments,
    COUNT(*) AS total_records, -- Get total rows in a result, irrespective of NULL values.
    COUNT(DISTINCT client_id) AS distinct_client
FROM
    invoices;