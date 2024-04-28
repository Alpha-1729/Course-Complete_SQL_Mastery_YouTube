-- Any Keyword
/*
>>>>

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_invoicing;

-- Select clients with at least two invoices.
SELECT
    *
FROM
    clients
WHERE
    client_id IN (
        SELECT
            client_id
        FROM
            invoices
        GROUP BY
            client_id
        HAVING
            COUNT(*) > 2
    );

-- Using ANY keyword.
SELECT
    *
FROM
    clients
WHERE
    client_id = ANY (
        SELECT
            client_id
        FROM
            invoices
        GROUP BY
            client_id
        HAVING
            COUNT(*) > 2
    );