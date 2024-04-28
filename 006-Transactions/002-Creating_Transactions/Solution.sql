-- Creating Transactions
/*
>>>> How to test the working of transactions.
        Each line in the below code can be executed individually in MySQL workbench.
        First run the transaction command.
        Then run the insert order statement.
        Then close the MySQL workbench.
        Check the entry in the order statement.
        That last change done in the order table is rolled back.
>>>>
>>>>
>>>>
>>>>
>>>>
*/


USE sql_store;

START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-01', 1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1, 1);

COMMIT;

-- Error checking and manually rollback.
-- We can run multiple statement in the transaction and run individual statement and can manually ROLLBACK if code is not working as expected.
START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-01', 1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 1, 1, 1);

ROLLBACK;

-- Every statement we write in the MySQL workbench is wrapped around a transaction by default.
-- If the statement not raised an error, MySQL will auto commit.
-- This is controlled using a system variable "autocommit".
SHOW VARIABLE LIKE 'autocommit';
