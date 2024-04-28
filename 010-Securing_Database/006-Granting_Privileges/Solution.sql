-- Granting Privileges
/*
>>>> MySQL privileges
        Reference Link: https://dev.mysql.com/doc/refman/8.0/en/privileges-provided.html
>>>>
>>>>
>>>>
>>>>
>>>>
*/
-- There are two scenarios for granting privileges to a user.
-- First: For a web/desktop application for read and writing into database.

CREATE USER moon_app IDENTIFIED BY 'password';
-- Execute is used to execute the stored procedure.
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
-- We can also use sql_store.customers(Granting privileges to a specific table only)
ON sql_store.*
TO moon_app;


-- Second: For an admin.
-- Granting all privileges.
GRANT ALL
-- *.* -> All tables in all databases.
ON *.*
TO john;
