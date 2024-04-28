-- Repeatable Read Isolation Level
/*
>>>> But this isolation level cannot prevent the phantom reads.
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- SESSION 1
USE sql_store;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
START TRANSACTION
-- Both these statement give the same result, if there is update in between.
SELECT points FROM customers WHERE customer_id = 1;
SELECT points FROM customers WHERE customer_id = 1;
COMMIT;

-- SESSION 2
USE sql_store;
START TRANSACTION;
UPDATE customers
SET points = 400
WHERE customer_id = 1;
COMMIT;