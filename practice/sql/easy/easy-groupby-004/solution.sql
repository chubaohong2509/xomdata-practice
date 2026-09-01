-- Xom Data · Which sales channel leads in orders
-- Problem: https://xomdata.com/practice/easy-groupby-004
-- Solved: 2026-09-01

-- Viết SQL của bạn ở đây
SELECT channel, COUNT(id) as num_orders FROM orders
GROUP BY channel 
ORDER BY COUNT(id) desc, channel asc
