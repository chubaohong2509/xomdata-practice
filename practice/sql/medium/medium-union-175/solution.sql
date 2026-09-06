-- Xom Data · Summary of issues to handle
-- Problem: https://xomdata.com/practice/medium-union-175
-- Solved: 2026-09-06

with bang as (SELECT 'Complaint' as type, count(id) as quantity from complaints
where status     ='Pending'
UNION 
SELECT 'Cancelled Order' as type, count(id) as quantity from orders
where status     ='Cancelled'
UNION 
SELECT 'Out of Stock Product' as type, count(id) as quantity from products
where status     ='Out of Stock'),
 bang1 as(
SELECT type, quantity,sum(quantity) over() as sum1, RANK() OVER (ORDER BY quantity DESC) AS rank_pos from bang)
SELECT type, quantity,round(quantity*100.00/sum1,2) as pct_of_total,rank_pos,  ROUND(
        SUM(quantity * 100.00 / sum1) OVER (
            ORDER BY rank_pos, type
        ), 
        2
    ) AS cumulative_pct   from bang1
order by rank_pos asc, type asc
