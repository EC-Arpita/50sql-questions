-- LeetCode Problem: Managers with at Least 5 Direct Reports
-- Write a solution to find managers who have at least 5 direct reports.
-- Return the result table containing the name of managers.

-- Table: Employee
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | department  | varchar |
-- | managerId   | int     |
-- +-------------+---------+
-- id is the primary key for this table.
-- Each row indicates the ID of an employee, their name, department, 
-- and the ID of their manager. managerId is NULL if the employee has no manager.

SELECT 
    e1.name
FROM Employee e1
JOIN Employee e2
    ON e1.id = e2.managerId
GROUP BY e1.id, e1.name
HAVING COUNT(e2.id) >= 5;
