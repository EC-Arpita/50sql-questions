-- 1135. Largest Unique Number
-- Table: MyNumbers
-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | num         | int  |
-- +-------------+------+
-- There is no primary key for this table. It may contain duplicates.

-- Question:
-- A single number is a number that appeared only once in the MyNumbers table.
-- Find the largest single number. If there is no single number, report null.
-- Return the result format as:
-- +------+
-- | num  |
-- +------+
-- |  8   |
-- +------+

-- Solution:
SELECT 
    MAX(num) AS num
FROM 
    MyNumbers
WHERE 
    num IN (
        SELECT num
        FROM MyNumbers
        GROUP BY num
        HAVING COUNT(*) = 1
    );
