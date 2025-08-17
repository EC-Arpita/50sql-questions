-- Problem: Invalid Tweets (LeetCode #1683)
-- Table: Tweets (tweet_id, content)
-- Task:
--   A tweet is considered invalid if its content length is strictly greater than 15 characters.
--   Write a query to find the tweet_id of all invalid tweets.
-- Output: tweet_id

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
