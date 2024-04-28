-- The Select Statement
/*
 >>>> Always end MySql statement with semicolon.
 
 >>>> To execute all the statement in the query window.
 Select all statement.
 Press Ctrl + Shift + Enter
 
 >>>> To execute the statement in the current line.
 Put the cursor in that line.
 Press Ctrl + Enter
 
 >>>> All tables, columns name should be in lowercase.
 Two words in a tables, column name should be separated with underscore.
 
 >>>> To update the value in a table.
 Query the table.
 On the result window, that show the table, click on any cell to the edit the value.
 After editing the value, click Enter.
 Click on the Apply button on the right side.
 Accept the confirmation.
 */
-- Before running the select statement, select the schema(database) first.
-- You can select the schema by double click on the schema, or use the below syntax.
USE sql_store;

-- Simple query
SELECT
    1,
    2;

-- OR
SELECT
    *
FROM
    customers;

-- Query with multiple clauses.
SELECT
    *
FROM
    customers
WHERE
    customer_id > 1
ORDER BY
    first_name;