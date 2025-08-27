-- Problem : Employees Whose Manager Left the Company

-- Table Structure
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT,
    salary INT
);


-- Solution Query
SELECT employee_id
FROM Employees
WHERE manager_id IS NOT NULL
  AND manager_id NOT IN (SELECT employee_id FROM Employees);
