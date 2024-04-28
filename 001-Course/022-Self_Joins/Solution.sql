-- Self Joins
/*
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
-- If a table have a primary key and primary column is mentioned in the any of the columns of this table.
-- We can use the Self Join concept here.
-- Suppose consider a Employee table.
-- Primary column is employee_id and there is another column manager_id in the same table.
-- manager_id is pointing to the employee_id column.
-- If we need to show all the employees and their managers, we need to use the Self Join.
USE sql_hr;

SELECT
    e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM
    employees e
    INNER JOIN employees m ON e.reports_to = m.employee_id;