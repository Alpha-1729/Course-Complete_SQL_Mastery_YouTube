-- Self Outer Joins
/*
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
USE sql_hr;

-- Self Outer Joins
-- Displays the employees with and without managers.
SELECT
    e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM
    employees e
    LEFT JOIN employees m ON e.reports_to = m.employee_id;