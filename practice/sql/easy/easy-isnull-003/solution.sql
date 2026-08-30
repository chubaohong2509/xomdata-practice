-- Xom Data · Records with a contact number
-- Problem: https://xomdata.com/practice/easy-isnull-003
-- Solved: 2026-08-30

-- Viết SQL của bạn ở đây
SELECT patient_name, phone from patients
where phone is not null
