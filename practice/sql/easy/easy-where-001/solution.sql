-- Xom Data · Filter products by category
-- Problem: https://xomdata.com/practice/easy-where-001
-- Solved: 2026-07-22

SELECT name,price, categories from products
WHERE categories like 'Electronics'
ORDER BY name asc;
