-- Problem: Article Views I (LeetCode #1148)
-- Table: Views (article_id, author_id, viewer_id, view_date)
-- Task: Find all the authors who viewed at least one of their own articles.
-- Output: author_id (as id), sorted in ascending order.

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;
