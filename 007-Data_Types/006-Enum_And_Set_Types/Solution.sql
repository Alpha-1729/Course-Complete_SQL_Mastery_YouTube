-- Enum And Set Types
/*
>>>> Drawback of enums.
        You cannot add any other values mentioned in the enum in a column.
        Adding/Changing the members of an enum can be expensive.
            MySQL will build the entire table again.
            It is expensive, if we have millions of records in the table.
            Enums are not reusable.
            
>>>> Better approach is to have an additional table.
        We refer to these types of tables as lookup tables.
>>>>
>>>>
>>>>
>>>>
*/
