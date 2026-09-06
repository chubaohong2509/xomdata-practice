-- Xom Data · Room price list by tier
-- Problem: https://xomdata.com/practice/easy-orderby-002
-- Solved: 2026-09-06

-- Viết SQL của bạn ở đây
SELECT room_no, room_type, price from rooms
 ORDER BY room_type asc,  price asc, room_no asc
