# Write your MySQL query statement below
SELECT id, movie, description, rating
FROM Cinema
WHERE id % 2 <> 0
AND description <> 'boring'
GROUP BY rating
ORDER BY rating DESC
