-- 1811. Employees With Many Managers (example style for your repo)

-- Table: Employees
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    reports_to INT,
    age INT
);

-- Insert sample data
INSERT INTO Employees (employee_id, name, reports_to, age) VALUES
(1, 'Alice', NULL, 45),
(2, 'Bob', 1, 30),
(3, 'Charlie', 1, 38),
(4, 'David', 2, 25),
(5, 'Eve', 2, 28);

-- Query: Find managers, number of direct reports, and average age of reports
SELECT 
    e.employee_id,
    e.name,
    COUNT(r.employee_id) AS reports_count,
    ROUND(AVG(r.age)) AS average_age
FROM Employees e
JOIN Employees r
    ON e.employee_id = r.reports_to
GROUP BY e.employee_id, e.name
ORDER BY e.employee_id;
