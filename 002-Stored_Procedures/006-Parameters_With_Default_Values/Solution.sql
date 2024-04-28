-- Parameters With Default Values
/*
 >>>> TINYINT datatype.
		It only take 1 byte to store integer.
		TINYINT can store number from 0-255.
 >>>> Difference between arguments and parameters.
		The value we supplied to the parameters is called the argument.
        Parameters are the placeholder we defines in a procedure or functions.
 >>>> We can define multiple parameters in a stored procedure.
 >>>>
 >>>>
 >>>>
 */
USE sql_invoicing;

-- Working with default values.
-- Method 1
-- If parameter is NULL , return a specific state.
DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state (state CHAR(2))
BEGIN
    IF state IS NULL THEN
        SET state = 'CA';
    END IF;

    SELECT
        *
    FROM
        clients c
    WHERE
        c.state = state;

END $$

DELIMITER ;

-- Calling a stored procedure with NULL.
CALL get_clients_by_state(NULL);


-- Method 2
-- If parameter is NULL , return all state
DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state (state CHAR(2))
BEGIN
    IF state IS NULL THEN
        SELECT * FROM clients;
	ELSE
		SELECT
        *
		FROM
			clients c
		WHERE
			c.state = state;
    END IF;
END $$

DELIMITER ;

-- Calling a stored procedure with NULL.
CALL get_clients_by_state(NULL);


-- Method 3
-- If parameter is NULL , return all state
DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state (state CHAR(2))
BEGIN
    
		SELECT
        *
		FROM
			clients c
		WHERE
			-- Same as WHERE 1 = 1
			c.state = IFNULL(state, c.state);
END $$

DELIMITER ;

-- Calling a stored procedure with NULL.
CALL get_clients_by_state(NULL);