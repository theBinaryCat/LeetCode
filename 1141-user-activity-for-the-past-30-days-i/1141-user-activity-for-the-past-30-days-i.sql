# Write your MySQL query statement below
SELECT activity_date AS day,  COUNT(DISTINCT user_id) AS active_users
FROM Activity 
WHERE activity_type IS NOT NULL 
GROUP BY activity_date
HAVING activity_date BETWEEN '2019-06-28' and '2019-07-27'
