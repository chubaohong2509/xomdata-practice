-- Xom Data · Branch code from the invoice number
-- Problem: https://xomdata.com/practice/easy-substr-001
-- Solved: 2026-09-04

-- Viết SQL của bạn ở đây
SELECT invoice_code, SUBSTR(invoice_code, 1, 3) AS branch_code FROM invoices
