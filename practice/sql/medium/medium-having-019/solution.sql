-- Xom Data · High-rated sellers with many orders
-- Problem: https://xomdata.com/practice/medium-having-019
-- Solved: 2026-09-10

with bang as (sELECT s.store_name,s.reputation_score,count(o.id) as order_count,
DENSE_RANK() over(order by count(o.id)desc) as rank_by_orders 
from sellers s 
inner JOIN orders o on s.id=o.seller_id

where s.reputation_score>=4.5
GROUP BY s.store_name,s.id,s.reputation_score
having count(o.id)>=3)

select *,
sum(order_count) over (order by order_count desc,store_name asc) as cumulative_orders
from bang
order by rank_by_orders asc,store_name asc
