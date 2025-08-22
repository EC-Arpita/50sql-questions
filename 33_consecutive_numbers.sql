-- Problem: Consecutive Numbers

-- Table: Logs
CREATE TABLE Logs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    num VARCHAR(20)
);

-- Insert sample data
INSERT INTO Logs (num) VALUES
('1'),
('1'),
('1'),
('2'),
('1'),
('2'),
('2'),
('2'),
('3'),
('3'),
('3'),
('3');

-- Query: Find numbers that appear at least three times consecutively
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 
  ON l1.id = l2.id - 1
JOIN Logs l3 
  ON l2.id = l3.id - 1
WHERE l1.num = l2.num 
  AND l2.num = l3.num;
