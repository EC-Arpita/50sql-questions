-- ============================================================
-- Problem: Insurance - Investment in 2016
-- ============================================================

-- Table Structure
DROP TABLE IF EXISTS Insurance;
CREATE TABLE Insurance (
    pid INT PRIMARY KEY,
    tiv_2015 FLOAT,
    tiv_2016 FLOAT,
    lat FLOAT,
    lon FLOAT
);

-- Sample Data (optional)
INSERT INTO Insurance VALUES
(1, 10, 5, 10, 10),
(2, 20, 20, 20, 20),
(3, 10, 30, 20, 20),
(4, 20, 40, 10, 10);

-- Solution Query
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) = 1
);
