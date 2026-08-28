-- Xom Data · Headcount per membership plan
-- Problem: https://xomdata.com/practice/easy-groupby-001
-- Solved: 2026-08-28

-- Viết SQL của bạn ở đây
SELECT plan, count(id) as num_members from members
GROUP BY plan
ORDER BY plan asc;
