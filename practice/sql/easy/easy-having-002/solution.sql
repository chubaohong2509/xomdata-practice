-- Xom Data · Customers reaching the loyalty milestone
-- Problem: https://xomdata.com/practice/easy-having-002
-- Solved: 2026-08-28

-- Viết SQL của bạn ở đây
SELECT customer_name, sum (amount) as total_spent from purchases
GROUP BY customer_name
HAVING sum (amount) >=5000000
order by sum(amount) desc,
customer_name asc
