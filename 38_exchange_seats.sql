-- Problem: Exchange Seats

-- Table Structure
DROP TABLE IF EXISTS Seat;
CREATE TABLE Seat (
    id INT PRIMARY KEY,
    student VARCHAR(50)
);

-- Solution Query
SELECT 
    CASE 
        WHEN id % 2 = 1 AND id = (SELECT MAX(id) FROM Seat) THEN id
        WHEN id % 2 = 1 THEN id + 1
        ELSE id - 1
    END AS id,
    student
FROM Seat
ORDER BY id;
