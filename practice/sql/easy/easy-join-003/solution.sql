-- Xom Data · Line totals from the price list
-- Problem: https://xomdata.com/practice/easy-join-003
-- Solved: 2026-08-27

-- Viết SQL của bạn ở đây
select sp.product_name, s.quantity, s.quantity*sp.price as line_total from  products sp
inner join sale_items s on sp.id=s.product_id;
