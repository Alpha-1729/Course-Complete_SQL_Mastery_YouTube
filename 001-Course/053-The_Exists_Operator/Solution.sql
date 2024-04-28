-- The Exists Operator
/*
>>>>

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

-- Select clients that have an invoice.
SELECT
    *
FROM
    clients
WHERE
    client_id IN (
        SELECT DISTINCT
            client_id
        FROm
            invoices
    );

-- Using EXIST operator.
-- Here we are also using the correlated queries.
-- EXIST is fast and useful, when there are many records in the sub query.
SELECT
    *
FROM
    clients C
WHERE
    EXISTS (
        SELECT
            *
        FROM
            invoices I
        WHERE
            I.client_id = C.client_id
    );