-- Dropping Stored Procedure
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
 */
USE sql_invoicing;

-- If stored procedure does not exist, it will throw error.
DROP PROCEDURE get_clients;

-- Can run multiple times.
DROP PROCEDURE IF EXISTS get_clients;