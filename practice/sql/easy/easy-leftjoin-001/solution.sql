-- Xom Data · Users who never took a ride
-- Problem: https://xomdata.com/practice/easy-leftjoin-001
-- Solved: 2026-08-27

-- Viết SQL của bạn ở đây
SELECT u.user_name, u.joined_date from users u 
LEFT JOIN rides r on u.id=r.user_id
where r.id is null
group by  u.user_name
