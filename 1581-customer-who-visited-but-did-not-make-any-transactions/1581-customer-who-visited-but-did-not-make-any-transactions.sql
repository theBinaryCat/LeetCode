# Write your MySQL query statement below
SELECT customer_id, count(customer_id) as count_no_trans FROM( SELECT customer_id
FROM Visits WHERE NOT EXISTS( SELECT 1 FROM Transactions
WHERE Visits.visit_id = Transactions.visit_id)) as customer_id
GROUP BY customer_id
