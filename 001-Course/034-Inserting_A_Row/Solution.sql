-- Inserting A Row
/*
>>>> DEFAULT Keyword.
It is used to add the default values for the column.
If the column is a primary key with auto increment, new value will be added instead of DEFAULT.

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_store;

-- Insert row without specifying column.
INSERT INTO
    customers
VALUES
    (
        DEFAULT, -- Customer ID
        'John', -- First Name
        'Smith', -- Last Name
        '199001-01', -- Birth Date
        NULL, -- Phone Number
        'address', -- Address
        'city', -- City
        'CA', -- State
        DEFAULT -- points
    );

-- Insert row with specifying columns.
INSERT INTO
    customers (
        first_name,
        last_name,
        birth_date,
        address,
        city,
        State
    )
VALUES
    (
        'John', -- First Name
        'Smith', -- Last Name
        '199001-01', -- Birth Date
        'address', -- Address
        'city', -- City
        'CA', -- State
    );