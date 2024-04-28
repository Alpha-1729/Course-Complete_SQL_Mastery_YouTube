-- Using Indexes For Sort
/*
>>>> We can also use the index to sorting the data.
>>>> Understanding Query Cost.
        If we have a composite index with two columns A ASC, B ASC.
            Then order by A ASC, B ASC will have less query cost.
            Then order by A DESC, B DESC will have less query cost.
            Then WHERE A = 'NY' order by B DESC will have least query cost.
            Then order by A ASC, B DESC will have high query cost. Because they use the file sort in this case.


>>>>
>>>>
>>>>
>>>>
*/

-- Indexes also help us in sorting the data.
-- If we have an index on a column, sorting in that column will be much easier.
-- Here we have a composite index on the columns state and points.So, MySQL still use full table scan.

EXPLAIN SELECT customer_id FROM customers ORDER BY state;

-- FileSort
-- It is the name of the algorithm that MySQL uses to sort data in a table you need to sort.
-- File Sort is an expensive operation.
-- See the screenshot added in the resource folder.
EXPLAIN SELECT customer_id FROM customers ORDER BY first_name;


-- Get the server variable.
SHOW STATUS;

-- Get the cost of last query.
-- If the sort the table by the a column having an index, query cost will be less.
SHOW STATUS LIKE 'last_query_cost';