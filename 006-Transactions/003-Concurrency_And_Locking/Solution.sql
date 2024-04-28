-- Concurrency And Locking
/*
>>>> Concurrency:
        In the real world, multiple user will try to access the same data at the same time.
>>>> In this we are going to learn how MySQL handle the concurrency.
>>>> How to test the concurrency in MySQL.
        Open 2 instance of the MySQL workbench.
        Copy and paste the below code in each instance.
        Run the statement till the COMMIT statement in first instance line by line.
        Run the statement till the COMMIT statement in second instance line by line.
        MySQL create a lock on the row that are being updated in the first instance, So the timeout error will be shown in the second instance.
        Run the commit statement in the first instance.
        Now, We can commit the transaction in the second instance.
>>>>
>>>>
>>>>
*/

USE sql_store;

START TRANSACTION;
UPDATE customers
SET points = points + 10
WHERE customer_id = 1;
COMMIT;