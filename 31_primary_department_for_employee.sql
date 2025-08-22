-- Problem: Primary Department for Each Employee

-- Table: Employee
CREATE TABLE Employee (
    employee_id INT,
    department_id INT,
    primary_flag VARCHAR(1) CHECK (primary_flag IN ('Y','N'))
);

-- Insert sample data
INSERT INTO Employee (employee_id, department_id, primary_flag) VALUES
(1, 1, 'N'),
(2, 1, 'Y'),
(2, 2, 'N'),
(3, 3, 'N'),
(4, 2, 'N'),
(4, 3, 'Y');

-- Query: Find each employee's primary department
SELECT 
    employee_id,
    department_id
FROM Employee
WHERE primary_flag = 'Y'
   OR employee_id IN (
        SELECT employee_id
        FROM Employee
        GROUP BY employee_id
        HAVING COUNT(department_id) = 1
   );
