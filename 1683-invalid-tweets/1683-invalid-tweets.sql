# Write your MySQL query statement below
SELECT tweet_id
FROM Tweets
GROUP BY tweet_id
HAVING LENGTH(MAX(content)) > 15