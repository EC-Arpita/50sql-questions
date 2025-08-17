-- Problem: Find Customer Referee (LeetCode #584)
-- Table: Customer (id, name, referee_id)
-- Task: Find the names of customers who are not referred by customer with id = 2.

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;
