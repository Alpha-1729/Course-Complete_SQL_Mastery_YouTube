-- Covering Indexes
/*
>>>> Covering Index.
        An index that cover everything that a query needs.
        So using this index MySQL can execute our query without touching the table.
        This is the fastest performance we can get.
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- Since customer_id is a primary key and we have an index on the state column, MySQL can satisfy this query only using the index. Without querying the actual table.
-- Since index contain the customer_id and the state column.
-- If we use SELECT *, MySQL had to use the full table scan.
EXPLAIN SELECT customer_id, FROM customers
ORDER BY state;
