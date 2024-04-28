-- When Indexes Are Ignored
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- Example 1.
-- Performance optimization with queries having OR operator.
-- This query still scans all the record in the table.
CREATE INDEX idx_state_points ON customers(state, points);
EXPLAIN SELECT customer_id FROM customers
WHERE state = 'CA' OR points > 1000;

-- This queries can be optimized using this.
CREATE INDEX idx_points ON customers(points);
EXPLAIN
    SELECT customer_id FROM customers WHERE state = 'CA'
    UNION
    SELECT customer_id FROM customers WHERE points > 1000;


-- Example 2.
-- This query used the full index scan. Scans all rows in the table due to the statement in the where clause.
EXPLAIN SELECT customer_id FROM customers WHERE points + 10 > 2010;

-- The above query can be optimized using this.
EXPLAIN SELECT customer_id FROM customers WHERE points > 2000;