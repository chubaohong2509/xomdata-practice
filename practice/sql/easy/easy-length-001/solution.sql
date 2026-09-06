-- Xom Data · Accounts that must be renamed
-- Problem: https://xomdata.com/practice/easy-length-001
-- Solved: 2026-09-06

-- Viết SQL của bạn ở đây
SELECT username, level from players
where LENGTH(username) < 6
