-- Storage Engines
/*
>>>> Storage Engine.
        In MySQL we have several storage engine.
        These storage engine determines, how the data is stored and what features are available to us.
>>>>
>>>>
>>>>
>>>>
>>>>
*/

-- Get the list of all storage engines.
-- Most popular ones are MyISAM and InnoDB.
-- MyISAM is an old storage engine.
-- InnoDB is the superior storage engine, it support features like transactions.
SHOW ENGINES

-- How to change the storage engine.
-- We set storage engine at the table level, so in a database we can have multiple storage engine.
-- Changing the storage engine of a table is an expensive thing, MySQL has to rebuild the table.
ALTER TABLE customers
ENGINE = InnoDB;