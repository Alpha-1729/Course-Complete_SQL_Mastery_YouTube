-- Functions
/*
>>>> Functions can return only a single value.
		They cannot return result set or multiple rows or columns.
>>>>
>>>>
>>>>
>>>>
>>>>
 */

USE sql_invoicing;

-- Dropping function if function is already existing.
DROP FUNCTION IF EXISTS get_risk_factor_for_client;

DELIMITER $$
CREATE FUNCTION get_risk_factor_for_client(client_id INT)
RETURNS INTEGER
-- Atrribute of the function.
-- Every MySQL function has atleast one attribute.
-- We can also add more attributes.
-- These are the different attributes in MySQL function.
-- DETERMINISTIC -> Function return same value on same inputs. (example sqare_num function).
-- READS SQL DATA -> Function contains select statement to read data from the table.
-- MODIFIES SQL DATA -> Contains Insert, Delete, Update statement in the function.
READS SQL DATA
BEGIN
	-- risk_factor = invoices_total / invoices_count * 5;
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoices_total DECIMAL(9, 2);
    DECLARE invoices_count INT;
    
	SELECT COUNT(*), SUM(invoice_total)
    -- Assigning values from select into variable.
    INTO invoices_count, invoices_total
    FROM invoices i
    WHERE i.client_id = client_id;
    
	-- Zero divided by NULL -> NULL
    -- If invoices_count is NULL, risk_factor becomes NULL.
    SET risk_factor = invoices_total / invoices_count * 5;
    
    RETURN IFNULL(risk_factor, 0);
END $$

DELIMITER ;

SELECT
	client_id,
    name,
    get_risk_factor_for_client(client_id) AS risk_factor
FROM clients;