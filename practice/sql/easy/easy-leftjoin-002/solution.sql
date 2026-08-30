-- Xom Data · Total spend per member
-- Problem: https://xomdata.com/practice/easy-leftjoin-002
-- Solved: 2026-08-30

-- Viết SQL của bạn ở đây
SELECT m.member_name, COALESCE(SUM (b.amount),0)as total_spent from members m
left join bills b on b.member_id=m.id
group by m.id
ORDER BY m.member_name asc
