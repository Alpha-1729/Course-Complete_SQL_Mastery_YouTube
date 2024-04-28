-- Creating A Stored Procedure
/*
>>>> Use of DELIMITER.
- Every statement in the procedure should end with a semicolon.
- It is used to run all codes in the procedure as a single code block.
>>>> We can also use a view inside a stored procedure.
>>>>
>>>>
>>>>
>>>>
 */
USE sql_invoicing;

DELIMITER $$
CREATE PROCEDURE get_clients () BEGIN
SELECT
    *
FROM
    clients;

END $$ DELIMITER;

-- Calling a stored procedure.
CALL get_clients ();