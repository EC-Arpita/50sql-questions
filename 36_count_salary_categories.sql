-- Problem: Bank Account Salary Categories

-- Table: Accounts
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    income INT
);

-- Insert sample data
INSERT INTO Accounts (account_id, income) VALUES
(1, 15000),
(2, 25000),
(3, 40000),
(4, 55000),
(5, 18000),
(6, 50000),
(7, 60000);

-- Query: Count accounts by salary category
SELECT 'Low Salary' AS category, COUNT(*) AS accounts_count
FROM Accounts
WHERE income < 20000

UNION ALL

SELECT 'Average Salary' AS category, COUNT(*) AS accounts_count
FROM Accounts
WHERE income BETWEEN 20000 AND 50000

UNION ALL

SELECT 'High Salary' AS category, COUNT(*) AS accounts_count
FROM Accounts
WHERE income > 50000;
