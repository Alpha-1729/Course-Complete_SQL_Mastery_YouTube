-- Parameter Validation
/*
>>>> SQLSTATE
		Reference Link: https://www.ibm.com/docs/en/db2-for-zos/13?topic=codes-sqlstate-values-common-error
        First two letter in SQLSTATE specifier the class of errors.
			Eg: 22 -> Data Exception.
>>>>
>>>>
>>>>
>>>>
>>>>
 */

USE sql_invoicing;

DROP PROCEDURE IF EXISTS make_payment;

DELIMITER $$
CREATE PROCEDURE make_payment(
	invoice_id INT,
    payment_amount DECIMAL(9, 2), -- Total 9 digit and 2 place after the decimal.
    payment_date DATE
)
BEGIN
	IF payment_amount <= 0 THEN
        -- Raise error.
        -- 22003 -> A numeric value is out of range.
        SIGNAL SQLSTATE '22003' SET MESSAGE_TEXT = 'Invalid payment amount';
    END IF;
    
    UPDATE invoices i
    SET
		i.payment_total = payment_amount,
        i.payment_date = payment_date
	WHERE i.invoice_id = invoice_id;

END $$

DELIMITER ;

CALL make_payment(1, -100, '2019-01-01');