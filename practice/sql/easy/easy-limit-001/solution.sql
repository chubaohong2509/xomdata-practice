-- Xom Data · 5 cheapest products
-- Problem: https://xomdata.com/practice/easy-limit-001
-- Solved: 2026-07-22

SELECT name,price from products
ORDER BY price asc
limit 5
