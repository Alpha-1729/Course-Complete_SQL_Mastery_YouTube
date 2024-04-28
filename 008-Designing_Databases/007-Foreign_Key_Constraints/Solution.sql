-- Foreign Key Constraints
/*
>>>> Why foreign key constraints.
        Protects the data from being corrupted. 
>>>> ON UPDATE/DELETE CASCADE.
        If the primary key changes, MySQL will automatically update the foreign key in the child tables.
>>>> ON UPDATE/DELETE REJECT/NO ACTION.
        If the primary key changes, MySQL will reject updates from happening.
>>>> ON UPDATE/DELETE SET NULL.
        If the primary key changes, NULL values will be set in the foreign key table.
>>>>
>>>>
*/
