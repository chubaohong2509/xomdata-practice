-- Xom Data · Booking count per branch
-- Problem: https://xomdata.com/practice/easy-leftjoin-003
-- Solved: 2026-08-30

-- Viết SQL của bạn ở đây
SELECT br.branch_name, (count( b.id)) as num_bookings from branches br
left join bookings b on b.branch_id= br.id
group by br.id
order by br.branch_name asc
