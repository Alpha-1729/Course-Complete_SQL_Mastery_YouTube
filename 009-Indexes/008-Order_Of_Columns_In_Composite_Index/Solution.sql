-- Order Of Columns In Composite Index
/*
>>>> Two rules for determining order of columns in composite indexes.
        Put the most frequently used columns first.
        Put the column with the higher cardinality first.
            primary key column has the highest cardinality.
            cardinality represent the number of unique values in the index.
        Take your queries into account.
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- An example.
EXPLAIN SELECT customer_id
FROM customers
USE INDEX(idx_state_lastname) -- Using a specified index.
WHERE state = 'CA' AND last_name LIKE 'A%';

CREATE INDEX idx_state_lastname ON customers (state, last_name);
