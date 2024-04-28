-- Formatting Dates And Times
/*
>>>> Date format in MySQL.
        yyyy-mm-dd hh:mm:ss

>>>> Date format reference.
        Reference Link: https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html
        Scroll to bottom.
>>>>
>>>>
>>>>
>>>>
 */

-- Out -> March 11 2019.
SELECT DATE_FORMAT(NOW(), '%M %d %Y');

-- Out -> 12:58 PM
SELECT DATE_FORMAT(NOW(), '%H:%i %p');
