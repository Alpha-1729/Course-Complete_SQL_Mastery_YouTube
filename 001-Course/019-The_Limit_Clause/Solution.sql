-- The Limit Clause
/*
 >>>> If the argument passed in the limit clause is greater then the total number of records, it will return all the records.
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
-- Return first 3 records.
SELECT
    *
FROM
    customers
LIMIT
    3;

-- If the table have only 100 and we add 200 in the limit clause, the result set have 100 records.
SELECT
    *
FROM
    customers
LIMIT
    200;

-- Adding the offset value in the limit clause.
-- Offset is used in pagination in the website.
-- As an example, in the first page, show only record 1-10.
-- In the second page show records 11-20.
-- The below example shows the record 12 and 13.(It will skip the first 11 records).
SELECT
    *
FROM
    customers
LIMIT
    11, 2;