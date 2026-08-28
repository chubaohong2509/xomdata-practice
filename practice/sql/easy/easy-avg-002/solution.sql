-- Xom Data · The cafe's average rating
-- Problem: https://xomdata.com/practice/easy-avg-002
-- Solved: 2026-08-28

-- Viết SQL của bạn ở đây
SELECT round (avg(rating) ,2) as avg_rating from reviews
