-- Transactions
/*
>>>> ACID properties of transactions.
        Atomicity:
            Transactions are like atoms.
            Each transaction is a single unit of work, no matter how many statements it contain.
            Either all the statement get executed successfully and transaction is committed.
            Or the transaction is rolled back and all changes are undone.
        Consistency:
            With these transaction, our database will remain in a consistent state.
        Isolation:
            These transactions are isolated or protected from each other, if they try to modify the same data.
            If multiple transaction try to update the same data, the rows that are affected get locked and so only transaction at a time can update those rows. Other transaction has to wait.
        Durability:
            Once a transaction is committed, the changes made by the transaction are permanent.
>>>>
>>>>
>>>>
>>>>
>>>>
 */
