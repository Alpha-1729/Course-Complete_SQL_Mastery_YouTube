-- Creating A User
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
*/


-- Create a new user.
-- Where the user can access the server is added after the @.
CREATE USER john@127.0.0.1;
CREATE USER john@localhost; -- Specifying the host name.
CREATE USER john@codewithmosh.com; -- Specifying the domain name.
CREATE USER john@'%.codewithmosh.com'; -- Specifying the sub-domain.
CREATE USER john; -- Can connect from anywhere.

-- Creating user and specifying the password.
CREATE USER john IDENTIFIED BY 'password';