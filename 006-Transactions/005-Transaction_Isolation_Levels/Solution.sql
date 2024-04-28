-- Transaction Isolation Levels
/*
>>>> In MySQL the default isolation level is REPEATABLE READ.
>>>> If you are a application developer and if you have methods inside the application that connects to the database to execute given transaction.
        Then you can use a object relational mapper or directly connect to the MySQL.
        Just before executing the transaction, Change the isolation level only for the current session.
        Then execute the transaction, this way other transaction in the database will not be affected.
>>>>
>>>>
>>>>
>>>>
*/

-- How to set the transaction isolation level.
SHOW VARIABLES LIKE 'transaction_isolation';

-- Set transaction isolation level for next transaction.
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;


-- Set transaction isolation level for all future transaction for current section or connection.
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- Set transaction isolation level for all future transaction globally
SET GLOBAL TRANSACTION ISOLATION LEVEL SERIALIZABLE;
