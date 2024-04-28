-- Isnull Operator
/*
 >>>> NULL means entry is missing in the table.
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
-- Customers without phone numbers.
SELECT
    *
FROM
    customers
WHERE
    phone IS NULL;

-- Customers with phone numbers.
SELECT
    *
FROM
    customers
WHERE
    phone IS NOT NULL;