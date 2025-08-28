-- ============================================================
-- Problem : Products Ordered in February 2020
-- ============================================================

-- Table Structure
DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_category VARCHAR(100)
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    product_id INT,
    order_date DATE,
    unit INT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Sample Data (optional)
INSERT INTO Products VALUES
(1, 'Leetcode Solutions', 'Book'),
(2, 'Jewels of Stringology', 'Book'),
(3, 'HP Laptop', 'Electronics');

INSERT INTO Orders VALUES
(1, '2020-02-05', 60),
(1, '2020-02-15', 50),
(2, '2020-02-10', 80),
(2, '2020-02-12', 20),
(3, '2020-03-01', 200);

-- Solution Query
SELECT 
    p.product_name,
    SUM(o.unit) AS unit
FROM Orders o
JOIN Products p
    ON o.product_id = p.product_id
WHERE DATE_FORMAT(o.order_date, '%Y-%m') = '2020-02'
GROUP BY p.product_id, p.product_name
HAVING SUM(o.unit) >= 100;
