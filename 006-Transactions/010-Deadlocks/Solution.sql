-- Deadlocks
/*
>>>> Deadlock
        It happens when different transactions cannot complete.
        Because each transaction holds a lock that other needs.
        Both transaction keep waiting for each other and never release their lock.

>>>> How to create a deadlock.
        First and second statement in the SESSION 1 and SESSION 2 are inverse to each other.
        If we didn't commit changes in the both the transaction.
        Both transaction will wait and create a deadlock scenario.

        In this MySQL treat one SESSION as the victim and ROLLBACK that transaction.
>>>> If you are an application developer.
        You have to rerun the transaction, if a transaction is rolled back due to the deadlock.
        OR tell the user that the operation is failed.
>>>> How to minimize the deadlock scenario.
        Look at code, Change the order of the statement in the transaction.
            Swapping statement in two transaction may always cause the deadlock.
        Keep your transaction small.
            Avoid large tables in the transaction.
            Avoid long time taking query in the transaction.
                Schedule both these transaction during non-peek hours.
>>>>
>>>>
*/

-- SESSION 1
USE sql_store;
START TRANSACTION
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
UPDATE orders SET status = 1 WHERE order_id = 1;
COMMIT;

-- SESSION 2
USE sql_store;
START TRANSACTION
UPDATE orders SET status = 1 WHERE order_id = 1;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
COMMIT;