-- Using Triggers For Auditing Read Desc
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
 */

USE sql_invoicing;

CREATE TABLE payments_audit
(
    client_id INT
    ,date DATE
    ,amount DECIMAL(9, 2)
    ,action_type DECIMAL(9, 2)
    ,action_date DATETIME
);

DROP TRIGGER IF EXISTS payments_after_insert;

DELIMITER $$

-- Note the general naming convention for the trigger.
-- TableName_(AFTER/BEFORE)_(INSERT/UPDATE/DELETE)
CREATE TRIGGER payments_after_insert
    AFTER INSERT ON payments
    FOR EACH ROW -- This trigger will be called on each single entry in the payments table.
BEGIN
    UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id; -- WHERE clause is necessary here, else all rows will be updated.

    -- Add an entry in the audit table after trigger.
    INSERT INTO payments_audit
    VALUES (NEW.client_id, NEW.date, NEW.amount, 'Insert', NOW());
END $$

DELIMITER ;