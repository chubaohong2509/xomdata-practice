-- Xom Data · Employees averaging over 5 overtime hours
-- Problem: https://xomdata.com/practice/medium-having-128
-- Solved: 2026-09-10

WITH att AS (
    SELECT 
        employee_id,
        AVG(work_days) AS avg_work_days,
        AVG(overtime_hours) AS avg_overtime_hours
    FROM attendance
    GROUP BY employee_id
),

pay AS (
    SELECT 
        employee_id,
        AVG(net_salary) AS avg_salary
    FROM payroll
    GROUP BY employee_id
),

bang AS (
    SELECT 
        e.full_name,
        e.employee_code,
        att.avg_work_days,
        att.avg_overtime_hours,
        pay.avg_salary,

        ROUND(
            att.avg_overtime_hours / att.avg_work_days,
            4
        ) AS overtime_intensity

    FROM employees e

    INNER JOIN att 
        ON att.employee_id = e.id

    INNER JOIN pay 
        ON pay.employee_id = e.id

    WHERE att.avg_overtime_hours > 5
      AND att.avg_work_days >= 18
)

SELECT *,
       RANK() OVER (
           ORDER BY overtime_intensity DESC
       ) AS intensity_rank,

       NTILE(4) OVER (
           ORDER BY overtime_intensity DESC
       ) AS workload_quartile

FROM bang

ORDER BY intensity_rank ASC, employee_code ASC;
