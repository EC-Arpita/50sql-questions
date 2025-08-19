-- LeetCode Problem: Employee Bonus
-- Write a solution to report the name and bonus amount of each employee 
-- with a bonus less than 1000 (including those with no bonus).

-- Table: Employee
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | empId       | int     |
-- | name        | varchar |
-- | supervisor  | int     |
-- | salary      | int     |
-- +-------------+---------+
-- empId is the primary key.

-- Table: Bonus
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | empId       | int     |
-- | bonus       | int     |
-- +-------------+---------+
-- empId is the primary key.

SELECT 
    e.name,
    b.bonus
FROM Employee e
LEFT JOIN Bonus b
    ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
