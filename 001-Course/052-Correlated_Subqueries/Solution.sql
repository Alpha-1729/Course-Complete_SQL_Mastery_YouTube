-- Correlated Subqueries
/*
>>>> Disadvantages of correlated sub query.
Because of sub query get executed for all rows in the main query, correlated subquery is slow.

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_hr;

-- Select the employees whose salary is above the average in their office.
-- In this the inner sub query has a correlation with the outer query.
SELECT
    *
FROM
    employees E1
WHERE
    salary > (
        SELECT
            AVG(salary)
        FROM
            employees E2
        WHERE
            E2.office_id = E1.office_id
    );