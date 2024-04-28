-- Index Maintenance
/*
>>>> Avoid duplicate indexes.
        Duplicated indexes are the indexes on the same set of columns in the same order.
        like (A, B, C) and (A, B, C)
        MySQL doesn't stop us from creating duplicate indexes.
        Always check the existing indexes before creating the new one.
>>>> Avoid redundant indexes.
        If we have an index on two column. (A, B)
        Then creating and index on columns A is considered redundant.
        Since index with A and B can satisfy this condition.
        (A, B) and (B, A) are not redundant. These are two indexes to satisfy different constraints.
>>>> Before creating a new index, check the existing index and see it there is any index that you can extend.
>>>> Make sure to drop duplicate, redundant and unused indexes.
>>>>
>>>>
*/
