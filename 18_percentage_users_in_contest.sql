-- LeetCode Problem: Percentage of Users Attended a Contest
-- Description:
--   Find the percentage of the users registered in each contest.
--   The percentage should be rounded to 2 decimal places.
--   Return the result ordered by percentage in descending order.
--   In case of a tie, order it by contest_id in ascending order.

-- Table Schemas:
-- Users
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | user_id     | int     |
-- | user_name   | varchar |
-- +-------------+---------+
-- user_id is the primary key for this table.

-- Register
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | contest_id  | int     |
-- | user_id     | int     |
-- +-------------+---------+
-- (contest_id, user_id) is the primary key for this table.

-- SQL Query:
SELECT r.contest_id,
       ROUND(COUNT(DISTINCT r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC;
