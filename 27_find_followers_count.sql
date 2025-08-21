-- 1729. Find Followers Count
-- Table: Followers
-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | user_id     | int  |
-- | follower_id | int  |
-- +-------------+------+
-- (user_id, follower_id) is the primary key for this table.
-- This table shows the user_id and the follower_id of each follower relationship.
-- Each row means that follower_id follows user_id.

-- Question:
-- Write a solution to find the number of followers for each user.
-- Return the result table ordered by user_id.
-- The result should contain columns: user_id, followers_count.

-- Solution:
SELECT 
    user_id,
    COUNT(follower_id) AS followers_count
FROM 
    Followers
GROUP BY 
    user_id
ORDER BY 
    user_id;
