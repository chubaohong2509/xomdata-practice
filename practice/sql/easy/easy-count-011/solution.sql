-- Xom Data · Accounts still missing a tax code
-- Problem: https://xomdata.com/practice/easy-count-011
-- Solved: 2026-08-28

-- Viết SQL của bạn ở đây
SELECT COUNT (id) as missing_tax_code  from   accounts
WHERE tax_code is null;
