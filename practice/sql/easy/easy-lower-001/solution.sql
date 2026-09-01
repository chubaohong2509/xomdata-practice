-- Xom Data · Normalizing emails before matching
-- Problem: https://xomdata.com/practice/easy-lower-001
-- Solved: 2026-09-01

-- Viết SQL của bạn ở đây
SELECT email, lOWER(email) AS normalized_email 
FROM subscribers;
