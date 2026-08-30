-- Xom Data · Dishes off this season's menu
-- Problem: https://xomdata.com/practice/easy-in-002
-- Solved: 2026-08-30

-- Viết SQL của bạn ở đây
SELECT dish_name, category FROM dishes
where category not in ('Grill','Hotpot')
