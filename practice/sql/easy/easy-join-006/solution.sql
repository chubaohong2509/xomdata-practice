-- Xom Data · Customers who ever bought skincare
-- Problem: https://xomdata.com/practice/easy-join-006
-- Solved: 2026-08-27

-- Viết SQL của bạn ở đây
SELECT c.customer_name from customers c
INNER JOIN purchases p on p.customer_id=c.id
where p.category    ='Skincare'
group by c.customer_name
