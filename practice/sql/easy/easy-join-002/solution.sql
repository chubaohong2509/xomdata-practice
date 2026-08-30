-- Xom Data · Parcels bound for Denver
-- Problem: https://xomdata.com/practice/easy-join-002
-- Solved: 2026-08-30

-- Viết SQL của bạn ở đây
SELECT p.tracking_code, r.recipient_name from recipients r
inner join parcels p on p.recipient_id=r.id
WHERE r.city = 'Da Nang'
