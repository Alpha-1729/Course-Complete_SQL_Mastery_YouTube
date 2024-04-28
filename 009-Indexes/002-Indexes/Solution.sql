-- Indexes
/*
>>>> Indexes are data structures that database engines use to quickly find data.
        Without an index, MySQL has to scan every record in a table.
        Cost of this query is going to increase dramatically with the size of the table.
        Refer the screenshot attached in the resource folder.
>>>> In lot of cases indexes are small enough that they can fit into memory,that's why it is much faster to use them to find the data.
>>>> Cost of index
        Increase the size of the database.
            Indexes has to be permanently stored next to the database.
        Slow down the queries.
            Every time we add or update or delete, MySQl has to update the corresponding indexes.
            So we should reserve indexes for performance critical queries.
            Design indexes based on your queries, not your tables.
>>>> How indexes are stored.
        Internally indexes are stored as binary trees.
>>>>
>>>>
*/
