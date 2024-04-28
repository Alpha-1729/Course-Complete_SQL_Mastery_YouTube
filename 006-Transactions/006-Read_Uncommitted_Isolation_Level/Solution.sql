-- Read Uncommitted Isolation Level
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- How to create this scenario.
-- Run all statement in the SESSION 2 individually till ROLLBACK.
-- Run each statement in the SESSION 1 individually.
-- ROLLBACK the changes in the SESSION 2.
-- SESSION 1 have uncommitted data from the SESSION 2.

-- SESSION 1
USE sql_store;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT points
FROM customers
WHERE customer_id = 1;

-- SESSION 2
USE sql_store;
START TRANSACTION;
UPDATE customers
SET points = 20
WHERE customer_id = 1;
ROLLBACK;