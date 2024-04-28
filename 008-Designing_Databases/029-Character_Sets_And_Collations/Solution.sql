-- Character Sets And Collations
/*
>>>> Character Set
        When we store a string, MySQL will convert each character into it's numeric representations.
        Character set is a table that maps each character to a number.
        There are different character set to support multiple languages.
>>>> Collation. 
        It is bunch of rules that determines how the characters in a given language are sorted.
            Eg: 
                utf8_general_ci (ci -> case insensitive).
                    MySQL treats lower and upper case the same when it comes to sorting.

>>>> Why we need to change the character set.
        Suppose for a column of CHAR(10).
        MySQL will reserve 3 byte for each character in utf8.
        So changing the character set with maxlen=1 will reduce the space by a factor of 3.
>>>> We can change the character set and columns for a table/column.
        Refer the screenshot attached in the resource folder.
>>>>
>>>>
*/

-- Show character set in MySQL.
-- utf8 is the default character set used by MySQL.
-- Maxlen -> MySQL will reserve that much byte to store a single character.

SHOW CHARSET;

-- Changing the character set for a database.
-- While creating the database.
CREATE DATABASE db_name
    CHARACTER SET latin1;

-- While altering the database.
ALTER DATABASE db_name
    CHARACTER SET latin1;

-- Changing the character set for table.
-- While creating the table.
CREATE TABLE table1(
    name INT
)
CHARACTER SET latin1;

-- While updating the table.
ALTER TABLE table1
CHARACTER SET latin1;

-- Changing the character set for the column name.
CREATE TABLE table1 (
    name VARCHAR(50) CHARSET SET latin1 NOT NULL
);

