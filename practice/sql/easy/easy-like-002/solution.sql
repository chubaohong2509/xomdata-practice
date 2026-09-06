-- Xom Data · Sales division employees
-- Problem: https://xomdata.com/practice/easy-like-002
-- Solved: 2026-09-06

-- Viết SQL của bạn ở đây
SELECT employee_code, full_name from employees
WHERE employee_code like 'SAL-%'
