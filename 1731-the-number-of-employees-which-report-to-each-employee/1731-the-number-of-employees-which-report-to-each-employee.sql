# Write your MySQL query statement below
SELECT e.employee_id,
    e.name, 
    count(em.reports_to) AS reports_count,
    ROUND(AVG(em.age),0) AS average_age
FROM Employees e,Employees em
WHERE e.employee_id = em.reports_to
GROUP BY e.employee_id
ORDER BY e.employee_id

