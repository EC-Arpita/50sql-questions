-- LeetCode Problem: Project Employees I
-- Description:
--   Report the average experience years of all the employees for each project,
--   rounded to 2 decimal places.

-- Table Schemas:
-- Project
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | project_id  | int     |
-- | employee_id | int     |
-- +-------------+---------+
-- (project_id, employee_id) is the primary key for this table.

-- Employee
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | employee_id | int     |
-- | name        | varchar |
-- | experience_years | int|
-- +-------------+---------+
-- employee_id is the primary key for this table.

-- SQL Query:
SELECT p.project_id,
       ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e
     ON p.employee_id = e.employee_id
GROUP BY p.project_id;
