-- Triggers
/*
>>>> We use triggers to enforce data consistency.
>>>> An example.
        Whenever we add a payment in the payments table, We should update the payment_total column in the invoices table.
>>>> In Trigger, We can modify data in any table except table from which the trigger is generated.
        Else, it will cause an infinite loop.
>>>> OLD and NEW keyword in the Trigger.
        OLD refers to the row which is deleted.
        NEW refers to the row which is INSERTED/UPDATED.
        We can refer all the column in the row using the OLD/NEW keyword and the dot notation.
            Eg: OLD.amount
>>>>
>>>>
 */
USE sql_invoicing;

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
END $$

DELIMITER ;