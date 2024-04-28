-- Revoking Privileges
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- Grant privileges.
GRANT CREATE VIEW
ON sql_store.*
TO moon_app;

-- Revoke privileges.
REVOKE CREATE VIEW
ON sql_store.*
FROM moon_app;