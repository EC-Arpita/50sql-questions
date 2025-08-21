-- 1068. Product Sales Analysis I (Optimized Version)
-- Table: Sales
-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | sale_id     | int  |
-- | product_id  | int  |
-- | year        | int  |
-- | quantity    | int  |
-- | price       | int  |
-- +-------------+------+
-- sale_id is the primary key of this table.
-- Each row contains information about one sale of a product.

-- Question:
-- Write a solution to find all sales that occurred in the first year 
-- each product was sold.
-- For each product_id, identify the earliest year it appears in the Sales table.
-- Return all sales entries for that product in that year.
-- Return a table with the following columns: 
-- product_id, first_year, quantity, and price.

-- Solution:
WITH first_sales AS (
    SELECT 
        product_id, 
        MIN(YEAR(sale_date)) AS first_year
    FROM Sales
    GROUP BY product_id
)
SELECT 
    s.product_id,
    f.first_year,
    s.quantity,
    s.price
FROM Sales s
JOIN first_sales f 
  ON s.product_id = f.product_id 
 AND YEAR(s.sale_date) = f.first_year;
