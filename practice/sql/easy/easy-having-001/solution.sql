-- Xom Data · Categories full enough for the homepage
-- Problem: https://xomdata.com/practice/easy-having-001
-- Solved: 2026-08-30

-- Viết SQL của bạn ở đây
SELECT category, COUNT (DISTINCT id) as num_products FROM products
group by category 
having COUNT (DISTINCT id) >=3

ORDER BY category asc
