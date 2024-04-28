-- Concurrency Problems
/*
>>>> Concurrency problems.
        Lost Updates:
            When two transaction update the difference columns in the same row, We lost the data updated by the first transaction.
            Refer the screenshot attached.
        Dirty Reads:
            When transaction B reads uncommitted data updated by transaction A.
            And the transaction in A is ROLLBACK.
            Refer the screenshot attached.

            To solve this problem, We need to provide some isolation around the transaction.
            The data modified by the transaction should not be available to other transaction before commit.

            Standard SQL defines 4 transaction isolation levels.

            One of them is READ COMMITTED, Only committed data can be read by the transaction. With this we don't have dirty reads.
        Non-repeating Reads (Inconsistent reads)
            We have two select statement from table X in the transaction A.
            First select statement in transaction A is run.
            In transaction, we update the table X.
            Second select statement in transaction A is run.

            We get two different result from same select statement.

            In order to handle such case, we need to isolate this transaction from other transaction such that, changes to the data are not visible to our transaction.

            We have another isolation level called REPEATABLE READ.

            Refer the screenshot attached.
        Phantom Reads
            Phantom means ghost. We have data that suddenly appears like a ghost and we miss them in our query because they get added/updated after we execute our query.

            How to handle.
                1. We can re-run this query at a later time.
                2. If we need to handle this at the current time, then
                    We will have to make sure that no other transaction are running that can impact our query to find the eligible customer.
                    For this, we have another isolation level called SERIALIZABLE.
                    This will guarantee that our transaction will be aware of the changes currently being made by other transaction. And this transaction will wait for another transaction to finish. So transaction to be executed sequentially.
                    This is the highest level of isolation and it gives us the most certainty in our operation.
                    If there is more users and more transaction, this isolation level can hurt performance and scalability.
>>>> 
>>>>
>>>>
>>>>
>>>>
*/
