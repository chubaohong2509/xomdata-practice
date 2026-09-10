-- Xom Data · Transaction count and amount by month
-- Problem: https://xomdata.com/practice/medium-datefunction-045
-- Solved: 2026-09-10

with bang as(SELECT strftime( '%Y-%m',transaction_date ) as month, count(id) as transaction_count, sum (amount) as total_amount, lag ( sum (amount)) over (order by strftime( '%Y-%m',transaction_date )asc ) as thangtrc 
from  transactions
group by month )
SELECT month,transaction_count,total_amount,(total_amount-thangtrc) as mom_delta 
from bang
ORDER BY month asc
