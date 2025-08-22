-- Problem: Product Price at a Given Date

-- Table: Products
CREATE TABLE Products (
    product_id INT,
    new_price INT,
    change_date DATE,
    PRIMARY KEY (product_id, change_date)
);

-- Insert sample data
INSERT INTO Products (product_id, new_price, change_date) VALUES
(1, 20, '2019-08-14'),
(2, 50, '2019-08-14'),
(1, 30, '2019-08-15'),
(1, 35, '2019-08-16'),
(2, 65, '2019-08-17');

-- Query: Find the price of all products on 2019-08-16
SELECT 
    p.product_id,
    COALESCE((
        SELECT new_price
        FROM Products p2
        WHERE p2.product_id = p.product_id
          AND p2.change_date <= '2019-08-16'
        ORDER BY p2.change_date DESC
        LIMIT 1
    ), 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) p;
