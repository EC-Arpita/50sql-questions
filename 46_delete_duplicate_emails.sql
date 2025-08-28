-- ============================================================
-- Problem : Delete Duplicate Emails
-- ============================================================

-- Table Structure
DROP TABLE IF EXISTS Person;
CREATE TABLE Person (
    id INT PRIMARY KEY,
    email VARCHAR(100)
);

-- Sample Data (optional)
INSERT INTO Person VALUES
(1, 'john@example.com'),
(2, 'bob@example.com'),
(3, 'john@example.com');

-- Solution Query (DELETE duplicates, keep smallest id)
DELETE p1
FROM Person p1
JOIN Person p2
  ON p1.email = p2.email
 AND p1.id > p2.id;

-- After execution, Person table will only contain unique emails
