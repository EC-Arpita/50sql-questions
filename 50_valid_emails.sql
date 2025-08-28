-- Table: Users
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(255),
    mail VARCHAR(255)
);

-- Sample Data
INSERT INTO Users (user_id, name, mail) VALUES
(1, 'Winston', 'winston@leetcode.com'),
(2, 'Alice', 'alice@leetcode.COM'),
(3, 'Bob', '_bob@leetcode.com'),
(4, 'Charlie', 'charlie@leetcode?com'),
(5, 'David', 'david-123@leetcode.com');

-- Solution: Find valid emails
-- A valid email must:
--   1. Start with a letter
--   2. Allow letters, digits, '.', '_', '-'
--   3. End exactly with '@leetcode.com'
--   4. Be case-sensitive (domain must be lowercase)
SELECT *
FROM Users
WHERE REGEXP_LIKE(mail, '^[A-Za-z][A-Za-z0-9._-]*@leetcode\\.com$', 'c');
