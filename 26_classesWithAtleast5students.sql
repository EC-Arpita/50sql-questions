-- 596. Classes More Than 5 Students
-- Table: Courses
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | student     | varchar |
-- | class       | varchar |
-- +-------------+---------+
-- (student, class) is the primary key column for this table.
-- Each row of this table indicates the name of a student and the class in which they are enrolled.

-- Question:
-- Write a solution to find all the classes that have at least five students.

-- Solution:
SELECT 
    class
FROM 
    Courses
GROUP BY 
    class
HAVING 
    COUNT(DISTINCT student) >= 5;
