-- Creating Relationships
/*
>>>> We cannot delete a table that has relation from other tables.
        In that case, delete the initial table then delete the second table.
>>>>
>>>>
>>>>
>>>>
>>>>
*/

CREATE DATABASE IF NOT EXISTS sql_store2;
USE sql_store2;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    FOREIGN KEY fk_orders_customers (customer_id)
        REFERENCES customers (customer_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);