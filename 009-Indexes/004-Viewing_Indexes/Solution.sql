-- Viewing Indexes
/*
>>>> Primary key is also called the clustered index.
        MySQL will create index for the primary key by default.
        All the other indexes are called secondary indexes.
        When we create an index, MySQL will create a combination of the primary key and indexes in the column. It is to fasten the data retrieval in the table.
>>>> Collation represent how the index is sorted in the index.
        A -> Ascending.
>>>> Cardinality represents the estimate number of unique columns in the index.
>>>> IndexType (BTREE) represents the binary tree.
>>>> Secondary indexes on foreign key columns.
        Whenever we create a relationship between two tables, MySQL will create an index on the foreign keys, so we can quickly join our tables.
>>>>
*/

-- Getting the indexes in a table.
-- See the screenshot attached in the resource folder.
SHOW INDEXES IN customers;

-- To get the exact information of the index in the table.
-- This will regenerate the index information in the table.
ANALYZE TABLE customers;