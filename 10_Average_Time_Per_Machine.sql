-- LeetCode Problem: Average Time of Process per Machine
-- Write a solution to find the average time each machine takes to complete a process.
-- The time to complete a process is (end - start).
-- The result should show machine_id and processing_time (rounded to 3 decimals).

-- Table: Activity
-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | machine_id     | int     |
-- | process_id     | int     |
-- | activity_type  | enum    |
-- | timestamp      | float   |
-- +----------------+---------+
-- (machine_id, process_id, activity_type) is the primary key.

SELECT 
    machine_id,
    ROUND(AVG(end_time - start_time), 3) AS processing_time
FROM (
    SELECT 
        machine_id,
        process_id,
        MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time,
        MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time
    FROM Activity
    GROUP BY machine_id, process_id
) AS t
GROUP BY machine_id;
