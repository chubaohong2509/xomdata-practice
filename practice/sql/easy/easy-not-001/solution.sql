-- Xom Data · Devices ready for dispatch
-- Problem: https://xomdata.com/practice/easy-not-001
-- Solved: 2026-09-01

-- Viết SQL của bạn ở đây
SELECT device_code, status from   devices
WHERE status <>'Maintenance'
