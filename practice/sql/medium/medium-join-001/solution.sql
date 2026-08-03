-- Xom Data · Customer spending per order
-- Problem: https://xomdata.com/practice/medium-join-001
-- Solved: 2026-08-03

SELECT k.full_name, count(d.id) as order_count, sum (d.total_amount) as total_spending, 
AVG (d.total_amount) as avg_order_value, rank  () over (order by sum (d.total_amount) desc,k.full_name asc) as spending_rank from customers k
INNER JOIN orders d on d.customer_id = k.id
GROUP BY k.full_name
order by spending_rank asc
