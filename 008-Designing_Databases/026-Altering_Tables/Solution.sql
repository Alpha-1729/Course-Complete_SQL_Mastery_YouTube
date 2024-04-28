-- Altering Tables
/*
>>>> Use backtick if you have space in column name.
>>>>
>>>>
>>>>
>>>>
>>>>
*/


-- Altering tables.
-- We can mention multiple column in one alter statement.
ALTER TABLE customers
    ADD last_name VARCHAR(50) NOT NULL AFTER first_name,
    ADD city VARCHAR(50) NOT NULL,
    MODIFY COLUMN first_name VARCHAR(255) DEFAULT '',
    DROP points;
