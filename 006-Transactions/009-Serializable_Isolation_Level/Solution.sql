-- Serializable Isolation Level
/*
>>>> This is same as this scenario.
        One user execute all the commands in the database.
        Commands are run in sequentially.
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- SESSION 1
USE sql_store;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
START TRANSACTION
SELECT points FROM customers WHERE customer_id = 1;
COMMIT;

-- SESSION 2
USE sql_store;
START TRANSACTION;
UPDATE customers
SET points = 400
WHERE customer_id = 1;
COMMIT;