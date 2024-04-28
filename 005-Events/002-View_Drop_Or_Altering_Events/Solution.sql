-- View Drop Or Altering Events
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
 */

-- Show all events.
SHOW EVENTS;

-- Filtering events with name.
SHOW EVENTS LIKE 'yearly%';

-- Dropping events.
DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;

-- Enabling or disabling events.
ALTER EVENT yearly_delete_stale_audit_rows DISABLE;

-- Altering the event.
DELIMITER $$
ALTER EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
    -- Run only once
    -- AT '2019-05-01'
    
    -- Run every year.
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2025-01-01'
DO BEGIN
    DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR; -- Here we can also use DATEADD function.

END $$
DELIMITER ;