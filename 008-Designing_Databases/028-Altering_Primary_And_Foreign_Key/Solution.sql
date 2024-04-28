-- Altering Primary And Foreign Key
/*
>>>> There is no need to specify the columns name while dropping the primary key.
>>>> While adding the composite key, You can add multiple columns separated by commas.
>>>>
>>>>
>>>>
>>>>
*/


-- Dropping and adding the foreign key.
ALTER TABLE orders
    -- Dropping the existing foreign key.
    DROP FOREIGN KEY fk_orders_customers,

    -- Adding the new foreign key.
    ADD FOREIGN KEY fk_orders_customers(customer_id)
        REFERENCES customers (customer_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION;

-- Adding and dropping the primary key.
ALTER TABLE orders
    ADD PRIMARY KEY (order_id),
    DROP PRIMARY KEY

