-- ============================================================
-- Problem: Fix Names in a Table
-- ============================================================

-- Table Structure
DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Sample Data (optional)
INSERT INTO Users VALUES
(1, 'aLICE'),
(2, 'bOB'),
(3, 'CHARLIE');

-- Solution Query
SELECT user_id,
       CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) AS name
FROM Users
ORDER BY user_id;
