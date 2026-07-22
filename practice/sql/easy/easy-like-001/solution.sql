-- Xom Data · Basic-plan subscribers
-- Problem: https://xomdata.com/practice/easy-like-001
-- Solved: 2026-07-22

SELECT phone_number,full_name,plans from subscribers
where plans like '%basic%'
ORDER BY full_name asc;
