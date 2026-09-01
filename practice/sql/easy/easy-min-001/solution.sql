-- Xom Data · Cheapest domestic fare
-- Problem: https://xomdata.com/practice/easy-min-001
-- Solved: 2026-09-01

-- Viết SQL của bạn ở đây
SELECT min(price) as  lowest_price from flights
WHERE route_type ='Domestic'
