-- Variables
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
*/
USE `sql_invoicing`;

-- User or session variables.
-- These variable stay in the memory for the entire session of the user.
SET @invoices_count = 0;

-- Local variable.
-- These are the variables inside a function or a stored procedure.
-- These variable do not stay in the memory for the entire session of the user.

DROP PROCEDURE IF EXISTS `get_risk_factor`;

DELIMITER $$
CREATE PROCEDURE get_risk_factor ()
BEGIN
	-- risk_factor = invoices_total / invoices_count * 5;
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoices_total DECIMAL(9, 2);
    DECLARE invoices_count INT;
    
	SELECT COUNT(*), SUM(invoice_total)
    -- Assigning values from select into variable.
    INTO invoices_count, invoices_total
    FROM invoices ;
    
    SET risk_factor = invoices_total / invoices_count * 5;
    
    SELECT risk_factor;
END$$

DELIMITER ;

CALL get_risk_factor();
