-- Problem: Replace Employee ID With The Unique Identifier (LeetCode #1378)
-- Tables:
--   Employees (id, name)
--   EmployeeUNI (id, unique_id)
--
-- Task:
--   Write a query to show the unique_id and name of each employee.
--   If an employee does not have a unique_id, still include them in the result.
--
-- Output: unique_id, name

SELECT e.unique_id, emp.name
FROM Employees emp
LEFT JOIN EmployeeUNI e
ON emp.id = e.id;
