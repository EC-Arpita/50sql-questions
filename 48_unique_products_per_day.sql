-- ============================================================
-- Problem : Unique Products per Day
-- ============================================================

-- Table Structure
DROP TABLE IF EXISTS Activities;
CREATE TABLE Activities (
    sell_date DATE,
    product VARCHAR(100)
);

-- Sample Data (optional)
INSERT INTO Activities VALUES
('2020-05-01', 'banana'),
('2020-05-01', 'apple'),
('2020-05-01', 'banana'),
('2020-05-02', 'banana'),
('2020-05-02', 'orange');

-- Solution Query
SELECT 
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product ASC) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
