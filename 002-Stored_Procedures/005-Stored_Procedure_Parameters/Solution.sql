-- Stored Procedure Parameters
/*
>>>> Use of parameters.
We can use parameters to retrieve value from the stored procedure.
We can use parameters to give values to the stored procedure.
>>>> All parameters are required in MySQL.
>>>>
>>>>
>>>>
>>>>
 */
USE sql_invoicing;

DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state (state CHAR(2)) BEGIN
SELECT
    *
FROM
    clients c
WHERE
    c.state = state;

END $$
DELIMITER ;

-- Calling a stored procedure.
CALL get_clients_by_state ('NY');