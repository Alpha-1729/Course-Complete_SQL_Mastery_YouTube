-- Composite Indexes
/*
>>>> In MySQL an index can include a maximum of 16 columns.
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- MySQL picks only one index out of multiple indexes.
-- Consider the following query.
-- Here MySQL use the index on the state column and use table scan on the points column.
-- In this case we can use the composite index to get the result.
SHOW INDEXES IN customers;
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' AND points > 1000;

-- Create a composite index.
CREATE INDEX idx_state_points ON customers(state, points);
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' AND points > 1000;

-- Dropping the index.
DROP INDEX idx_state ON customers;
