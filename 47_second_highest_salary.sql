-- ============================================================
-- Problem: Second Highest Salary
-- ============================================================

-- Table Structure
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    salary INT
);

-- Sample Data (optional)
INSERT INTO Employee VALUES
(1, 100),
(2, 200),
(3, 300);

-- Solution Query
SELECT (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
) AS SecondHighestSalary;
