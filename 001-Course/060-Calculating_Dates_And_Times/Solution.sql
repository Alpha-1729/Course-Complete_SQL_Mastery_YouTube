-- Calculating Dates And Times
/*
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
 */

-- Add 1 day to current date
SELECT DATE_ADD(NOW(), INTERVAL 1 DAY);

-- Add 1 year to current date.
SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR);

-- Going back to previous date.
SELECT DATE_ADD(NOW(), INTERVAL -1 YEAR);
SELECT DATE_SUB(NOW(), INTERVAL 1 YEAR);

-- Difference between two dates.
-- Shows difference in days.
SELECT DATE_DIFF('2019-01-05', '2019-01-17');

-- Number of seconds elapsed since midnight.
SELECT TIME_TO_SEC('09:00');

-- Find difference between tow time.
SELECT TIME_TO_SEC('09:02') - TIME_TO_SEC('09:00');
