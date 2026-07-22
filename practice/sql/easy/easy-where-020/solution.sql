-- Xom Data · Patients with blood type O+
-- Problem: https://xomdata.com/practice/easy-where-020
-- Solved: 2026-07-22

SELECT full_name, blood_type from patients
WHERE blood_type like '%O+%';
