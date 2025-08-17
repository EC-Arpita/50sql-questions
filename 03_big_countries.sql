-- Problem: Big Countries (LeetCode #595)
-- Table: World (name, continent, area, population, gdp)
-- A country is big if:
--   - area >= 3000000, OR
--   - population >= 25000000
-- Task: Find the name, population, and area of the big countries.

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;
