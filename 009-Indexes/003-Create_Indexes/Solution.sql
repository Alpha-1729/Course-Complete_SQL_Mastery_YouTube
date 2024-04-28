-- Create Indexes
/*
>>>> See the screenshots attached in the resource folder.
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- Explain keyword can be used to get the performance of the query. (How MySQL will get into the result.)
-- How many records in the table MySQL has to scan.
-- In this case my MySQL has to scan the entire records in the table.
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA';

-- Create the index in the state column to increase the performance.
CREATE INDEX idx_state ON customers(state);
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA';