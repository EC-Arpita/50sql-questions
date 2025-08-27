-- Problem : Restaurant Growth

-- Table Structure
DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer (
    customer_id INT,
    name VARCHAR(50),
    visited_on DATE,
    amount INT,
    PRIMARY KEY (customer_id, visited_on)
);


-- Solution Query
SELECT visited_on,
       amount,
       ROUND(AVG(amount) OVER (ORDER BY visited_on 
                               ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS average_amount
FROM (
    SELECT visited_on, SUM(amount) AS amount
    FROM Customer
    GROUP BY visited_on
) daily
WHERE visited_on >= (SELECT MIN(visited_on) FROM Customer) + INTERVAL '6' DAY;
