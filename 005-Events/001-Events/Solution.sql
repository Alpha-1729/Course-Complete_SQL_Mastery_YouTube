-- Events
/*
>>>> In events, we can automate database maintenance task, deleting unwanted data, copying one data from one to another.
>>>>
>>>>
>>>>
>>>>
>>>>
 */

-- Show all variables in the MySQL server.
SHOW VARIABLES;

-- Check the status of the event scheduler.
SHOW VARIABLES LIKE 'events%';

-- Turn on the event scheduler.
SET GLOBAL event_scheduler = ON;

-- Creating events.
DELIMITER $$
CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
    -- Run only once
    -- AT '2019-05-01'
    
    -- Run every year.
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01'
DO BEGIN
    DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR; -- Here we can also use DATEADD function.

END $$
DELIMITER ;
