-- Xom Data · Deal count per client
-- Problem: https://xomdata.com/practice/easy-join-007
-- Solved: 2026-08-27

-- Viết SQL của bạn ở đây
SELECT c.client_name, count (d.id) as num_deals from clients c
INNER JOIN deals d on d.client_id=c.id
group by c.client_name
ORDER BY count (d.id) DESC, c.client_name asc;
