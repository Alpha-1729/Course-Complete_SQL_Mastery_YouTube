-- Output Parameters
/*
>>>> By default all the parameter in the stored procedure are input parameters.
>>>>
>>>>
>>>>
>>>>
>>>>
 */

USE `sql_invoicing`;
DROP PROCEDURE IF EXISTS `get_unpaid_invoices_for_client`;

DELIMITER $$
CREATE PROCEDURE get_unpaid_invoices_for_client (
	IN client_id INT,
    OUT invoices_count INT,
    OUT invoices_total DECIMAL(9, 2)
)
BEGIN
	SELECT COUNT(*), SUM(invoice_total)
    -- Assigning values from select into variable.
    INTO invoices_count, invoices_total
    FROM invoices i
    WHERE
		i.client_id = client_id
        AND payment_total = 0;
END$$

DELIMITER ;

-- Calling the stored procedure.
SET @invoices_count = 0;
SET @invoices_total = 0;
CALL get_unpaid_invoices_for_client(3, @invoices_count, @invoices_total);
SELECT @invoices_count, @invoices_total;

