-- Xom Data · Products more expensive than the category average
-- Problem: https://xomdata.com/practice/medium-subquery-103
-- Solved: 2026-09-06

with bang as (SELECT product_name,category, price, avg(price) OVER(PARTITION BY category) as avg1 from products)
SELECT product_name,category, price,(price - avg1) as diff_from_avg,round((price - avg1)*100/avg1,2) as  pct_above   from bang
where price > avg1
order BY round((price - avg1)*100/avg1,2) desc, product_name asc
