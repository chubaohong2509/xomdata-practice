-- Xom Data · Excluding internal accounts from the report
-- Problem: https://xomdata.com/practice/easy-notlike-001
-- Solved: 2026-09-06

-- Viết SQL của bạn ở đây
SELECT email, plan from signups 
where email not like '%@corp.io'
