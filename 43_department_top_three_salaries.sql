-- ============================================================
-- Problem: Department Top Three Salaries

-- Table Structures
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    departmentId INT
);

DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Sample Data (optional)
INSERT INTO Department VALUES
(1, 'IT'),
(2, 'Sales');

INSERT INTO Employee VALUES
(1, 'Joe', 85000, 1),
(2, 'Henry', 80000, 2),
(3, 'Sam', 60000, 2),
(4, 'Max', 90000, 1),
(5, 'Janet', 69000, 1),
(6, 'Randy', 85000, 1),
(7, 'Will', 70000, 1);

--Solution Query
WITH Ranked AS (
    SELECT e.id,
           e.name,
           e.salary,
           e.departmentId,
           DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM Employee e
)
SELECT d.name AS Department,
       r.name AS Employee,
       r.salary AS Salary
FROM Ranked r
JOIN Department d
  ON r.departmentId = d.id
WHERE r.rnk <= 3
ORDER BY d.name, r.salary DESC;
