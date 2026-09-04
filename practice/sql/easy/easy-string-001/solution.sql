-- Xom Data · Normalize codes for label printing
-- Problem: https://xomdata.com/practice/easy-string-001
-- Solved: 2026-09-04

-- Viết SQL của bạn ở đây
SELECT SKU, UPPER(SKU) AS  label_code FROM inventory
