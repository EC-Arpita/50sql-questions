-- LeetCode Problem: Product Sales Analysis I
-- Write a solution to report the product_name, year, price, and quantity.
-- Return the result table in any order.

-- Table: Product
-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | product_id   | int     |
-- | product_name | varchar |
-- +--------------+---------+
-- product_id is the primary key.

-- Table: Sales
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | sale_id     | int     |
-- | product_id  | int     |
-- | year        | int     |
-- | quantity    | int     |
-- | price       | int     |
-- +-------------+---------+
-- (sale_id, year) is the primary key.

SELECT 
    p.product_name,
    s.year,
    s.price,
    s.quantity
FROM Sales s
JOIN Product p
    ON s.product_id = p.product_id;
