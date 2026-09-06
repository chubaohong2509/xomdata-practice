-- Xom Data · Line total for each item
-- Problem: https://xomdata.com/practice/easy-alias-001
-- Solved: 2026-09-06

-- Viết SQL của bạn ở đây
SELECT shipment_code, product, (quantity*unit_price) as line_revenue from shipment_items
