-- Xom Data · Ticket statuses guests can read
-- Problem: https://xomdata.com/practice/easy-join-005
-- Solved: 2026-08-27

-- Viết SQL của bạn ở đây
SELECT t.ticket_code,status_name from tickets t
inner join  statuses s on t.status_code= s.code;
