-- Read Committed Isolation Level
/*
>>>> This isolation level cant solve the repeatable reads concurrency issues.
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- SESSION 1
USE sql_store;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT points FROM customers WHERE customer_id = 1;
SELECT points FROM customers WHERE customer_id = 1;
COMMIT;

-- SESSION 2
USE sql_store;
START TRANSACTION;
UPDATE customers
SET points = 300
WHERE customer_id = 1;
COMMIT;