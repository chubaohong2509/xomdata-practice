-- Xom Data · Top salary in each department
-- Problem: https://xomdata.com/practice/easy-groupby-005
-- Solved: 2026-09-01

-- Viết SQL của bạn ở đây
SELECT department, max(salary)as top_salary FROM employees
GROUP BY department
ORDER BY department asc
