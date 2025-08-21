-- 1045. Customers Who Bought All Products
-- Table: Customer
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | customer_id | int     |
-- | product_key | int     |
-- +-------------+---------+
-- This table may contain duplicate rows.
-- customer_id is not NULL.
-- product_key is a foreign key referencing Product(product_key).

-- Table: Product
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_key | int     |
-- +-------------+---------+
-- product_key is the primary key (unique values).

-- Question:
-- Write a solution to report the customer ids from the Customer table 
-- that bought all the products in the Product table.
-- Return the result table in any order.

-- Solution:
SELECT 
    customer_id
FROM 
    Customer
GROUP BY 
    customer_id
HAVING 
    COUNT(DISTINCT product_key) = (
        SELECT COUNT(DISTINCT product_key) 
        FROM Product
    );
