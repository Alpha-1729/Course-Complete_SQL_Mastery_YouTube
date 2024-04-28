-- Full Text Index
/*
>>>> Full text index.
        With this index we can implement a fast and powerful search engine in our application.
        They include the entire string column.
        They basically store a list of words and for each word they store a list of rows or documents that these words appear in.
>>>> Modes in full text index.
        It has two modes.
            One is Natural Language Mode (Default Mode)
            Other is Boolean Mode.
                With this mode we can include or exclude certain words.
>>>>
>>>>
>>>>
>>>>
*/

-- Create a full text index.
CREATE FULLTEXT INDEX idx_title_body ON posts(title, body);

-- Search for the keywords.
-- This will return rows in which the one or both this keywords exist.
-- This can be in any order or separated by other words.
SELECT * FROM posts
WHERE MATCH(title, body) -- Columns in which the keywords should be searched.
AGAINST('react redux');


-- Full text index also include a relevant score for each rows that contain the search phase.
-- Relevant score is a float between 0 and 1.
-- The results are sorted in relevancy score in descending order.
SELECT 
    *,
    MATCH(title, body) AGAINST('react redux') AS relevancy_score;
FROM posts
WHERE MATCH(title, body) -- Columns in which the keywords should be searched.
AGAINST('react redux');

-- Boolean mode in full text index.
-- Exclude keywords using the minus sign.
-- Include mandatory words using the plus sign.
-- Optional words should not be prefixed with plus or minus sign.
SELECT 
    *,
    MATCH(title, body) AGAINST('react redux') AS relevancy_score;
FROM posts
WHERE MATCH(title, body)
AGAINST('react -redux +form' IN BOOLEAN MODE);

-- Search a exact phrase.
-- Use double quotes around the keyword.
SELECT 
    *,
    MATCH(title, body) AGAINST('react redux') AS relevancy_score;
FROM posts
WHERE MATCH(title, body)
AGAINST('"handling a form"' IN BOOLEAN MODE);