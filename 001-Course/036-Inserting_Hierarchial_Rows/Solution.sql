-- Inserting Hierarchial Rows
/*
>>>> An actual order can have multiple order-items.
This is called parent child relationship.
In order to insert an item in the order_items table, we need to insert an entry in the order table first.

>>>>

>>>>

>>>>

>>>>

>>>>
 */
USE sql_store;

-- Insert into parent table.
INSERT INTO
    orders (customer_id, order_date, status)
VALUES
    (1, '2019-01-01', 1);

-- Last inserted id.
SELECT
    LAST_INSERT_ID ();

-- Insert into child tables.
INSERT INTO
    order_items (order_id, product_id, quantity, unit_price)
VALUES
    (LAST_INSERT_ID (), 1, 1, 2.95),
    (LAST_INSERT_ID (), 2, 1, 3.95);