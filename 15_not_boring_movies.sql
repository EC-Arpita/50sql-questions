-- LeetCode Problem: Not Boring Movies
-- Description:
--   Report the movies with an odd-numbered ID and a description 
--   that is not "boring". Return the result ordered by rating descending.

-- Table Schema:
-- Cinema
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | movie       | varchar |
-- | description | varchar |
-- | rating      | float   |
-- +-------------+---------+
-- id is the primary key for this table.

-- SQL Query:
SELECT *
FROM Cinema
WHERE id % 2 = 1
  AND description <> 'boring'
ORDER BY rating DESC;
