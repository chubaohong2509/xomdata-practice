-- Xom Data · Patients without a health-insurance declaration
-- Problem: https://xomdata.com/practice/easy-isnull-002
-- Solved: 2026-07-22

select full_name from patients
where health_insurance IS NULL
ORDER BY full_name asc;
