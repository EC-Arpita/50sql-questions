-- LeetCode Problem: Average Selling Price
-- Description:
--   Find the average selling price for each product.
--   average_price should be rounded to 2 decimal places.
--   If a product does not have any sold units, its average selling price is assumed to be 0.

-- Table Schemas:
-- Prices
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | start_date  | date    |
-- | end_date    | date    |
-- | price       | int     |
-- +-------------+---------+
-- (product_id, start_date, end_date) is the primary key for this table.

-- UnitsSold
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | purchase_date | date  |
-- | units       | int     |
-- +-------------+---------+
-- (product_id, purchase_date) is the primary key for this table.

-- SQL Query:
SELECT p.product_id,
       ROUND(
         IFNULL(SUM(u.units * p.price) / SUM(u.units), 0),
         2
       ) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
       ON p.product_id = u.product_id
      AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
