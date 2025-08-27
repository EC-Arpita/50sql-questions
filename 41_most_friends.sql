-- ============================================================
-- Problem: Friend Requests II - Who Has the Most Friends
-- ============================================================

-- Table Structure
DROP TABLE IF EXISTS RequestAccepted;
CREATE TABLE RequestAccepted (
    requester_id INT,
    accepter_id INT,
    accept_date DATE,
    PRIMARY KEY (requester_id, accepter_id)
);

-- Sample Data (optional)
INSERT INTO RequestAccepted VALUES
(1, 2, '2021-01-01'),
(2, 3, '2021-01-02'),
(3, 4, '2021-01-03'),
(1, 3, '2021-01-04');

-- Solution Query
SELECT id AS person_id, COUNT(*) AS num_friends
FROM (
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id FROM RequestAccepted
) t
GROUP BY id
ORDER BY num_friends DESC
LIMIT 1;
