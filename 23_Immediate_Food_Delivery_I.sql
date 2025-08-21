-- -----------------------------------------------------
-- Problem: Immediate Food Delivery I (LeetCode 1173)
-- Table: Delivery
-- -----------------------------------------------------

-- Schema
CREATE TABLE Delivery (
    delivery_id INT,
    customer_id INT,
    order_date DATE,
    customer_pref_delivery_date DATE
);

-- Solution (MySQL)
SELECT 
    ROUND(
        100 * SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) 
        / COUNT(*),
    2) AS immediate_percentage
FROM (
    SELECT 
        customer_id,
        MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
) AS first_orders
JOIN Delivery d
    ON d.customer_id = first_orders.customer_id
   AND d.order_date = first_orders.first_order_date;
