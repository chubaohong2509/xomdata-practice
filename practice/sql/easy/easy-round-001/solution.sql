-- Xom Data · Display rates for the app
-- Problem: https://xomdata.com/practice/easy-round-001
-- Solved: 2026-09-04

-- Viết SQL của bạn ở đây
SELECT currency_pair, ROUND(raw_rate,2) AS display_rate  FROM   fx_rates
