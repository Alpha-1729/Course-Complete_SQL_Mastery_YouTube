-- Where Clause
/*
 >>>> These are the comparison operators in MySQL.
 >   -> Greater than
 <   -> Less than
 >=  -> Greater than or equal to
 <=  -> Less than or equal to
 !=  -> Not equal to
 <>  -> Not equal to
 
 >>>> We can use single quotes or double quotes to represent string in MySQL.
 
 >>>> Standard format for date in MySQL.
 'YYYY-MM-DD'
 
 >>>>
 
 >>>>
 
 >>>>
 */
USE sql_store;

SELECT
    *
FROM
    customers
WHERE
    points > 3000;

-- Comparing date with comparison operator.
SELECT
    *
FROM
    customers
WHERE
    birth_date > '1990-01-01';