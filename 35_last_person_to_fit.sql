-- Problem: Last Person to Fit in the Bus

-- Table: Queue
CREATE TABLE Queue (
    person_id INT PRIMARY KEY,
    person_name VARCHAR(100),
    weight INT,
    turn INT
);

-- Insert sample data
INSERT INTO Queue (person_id, person_name, weight, turn) VALUES
(1, 'Alice', 250, 1),
(2, 'Bob', 200, 2),
(3, 'Charlie', 300, 3),
(4, 'David', 400, 4),
(5, 'Eve', 150, 5);

-- Query: Find the last person who can fit on the bus without exceeding 1000 kg
SELECT person_name
FROM (
    SELECT 
        person_name,
        SUM(weight) OVER (ORDER BY turn) AS cum_weight
    FROM Queue
) t
WHERE cum_weight <= 1000
ORDER BY cum_weight DESC
LIMIT 1;
