-- And Or And Not Operator
/*
 >>>> Order of precedence.
 AND > OR > NOT
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 
 >>>>
 */
USE sql_store;

-- AND operator.
SELECT
    *
FROM
    customers
WHERE
    birth_date > '1990-01-01'
    AND points > 1000;

-- Order of precedence using parenthesis.
SELECT
    *
FROM
    customers
WHERE
    birth_date > '1990-01-01'
    OR (
        points > 1000
        AND state = 'VA'
    );

-- NOT operator.
SELECT
    *
FROM
    customers
WHERE
    NOT (
        birth_date > '1990-01-01'
        OR points > 1000
    );

-- How negation of a NOT operator is worked is explained using the below example for above query.
-- NOT operator is passed to the bracket and inverse each statement in the bracket.
-- The above statement can also be written without NOT operator as below.
SELECT
    *
FROM
    customers
WHERE
    birth_date <= '1990-01-01'
    AND points <= 1000;