# Write your MySQL query statement below
SELECT a.machine_id,
        ROUND(AVG(a.timestamp - b.timestamp),3) AS processing_time

FROM     Activity a, Activity b
WHERE    a.machine_id = b.machine_id
AND      a.process_id = b.process_id
AND      a.activity_type = 'end'
AND      b.activity_type = 'start'
GROUP BY machine_id