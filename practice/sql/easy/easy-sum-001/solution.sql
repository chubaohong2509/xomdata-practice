-- Xom Data · Revenue from delivered orders
-- Problem: https://xomdata.com/practice/easy-sum-001
-- Solved: 2026-07-22

SELECT sum(total_amount) as total_revenue from orders
where status ='Delivered';
