-- Xom Data · Employees paid above their department average
-- Problem: https://xomdata.com/practice/medium-subquery-110
-- Solved: 2026-09-06

WITH bang AS (
    SELECT 
        e.full_name, 
        d.dept_name,
        e.salary,
        ROUND(AVG(e.salary) OVER(PARTITION BY d.id), 0) AS dept_avg_salary
    FROM employees e 
    INNER JOIN departments d 
        ON d.id = e.department_id
)

SELECT 
    full_name, 
    dept_name,
    salary,
    dept_avg_salary,
    ROUND(
        (salary - dept_avg_salary) * 100.00 / dept_avg_salary,
        2
    ) AS premium_pct 
FROM bang
WHERE salary > dept_avg_salary
ORDER BY 
    premium_pct DESC,
    dept_name ASC,
    full_name ASC;
