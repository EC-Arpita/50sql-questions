-- Problem: Recyclable and Low Fat Products (LeetCode #1757)
-- Table: Products (product_id, low_fats, recyclable)
-- Task: Find the ids of products that are both low fat ('Y') and recyclable ('Y').

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
