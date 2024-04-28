-- Prefix Indexes
/*
>>>> Indexing on string columns.
        Indexing on CHAR, VARCHAR, TEXT, BLOB take large disk space.
        It wont perform well in this case.
        Smaller indexes are better, because they can fit in memory and make our searches faster.
        Better way to accomplish is to to use only the some portion of the string in the index.
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- Add index on the string column.
-- Argument is mandatory for the TEXT and BLOB columns.
CREATE INDEX idx_lastname ON customers (last_name(20));

-- How to get the optimal prefix length for the string column for the index.
-- We have to find a prefix length in which there are max unique elements.
SELECT
    COUNT(DISTINCT LEFT(last_name, 1)),
    COUNT(DISTINCT LEFT(last_name, 5)),
    COUNT(DISTINCT LEFT(last_name, 10))
FROM customers;