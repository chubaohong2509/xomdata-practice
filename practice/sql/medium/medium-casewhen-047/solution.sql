-- Xom Data · Portfolio profit/loss
-- Problem: https://xomdata.com/practice/medium-casewhen-047
-- Solved: 2026-09-10

with bang as (select s.stock_code, c.stock_quantity, c.avg_cost_price, s.current_price,
round((s.current_price-c.avg_cost_price)*c.stock_quantity,0) as profit_loss,
round((s.current_price-c.avg_cost_price)*100.00/c.avg_cost_price,2) as profit_pct 
from categories c
 INNER JOIN stocks s on s.id=c.stock_id
  GROUP BY s.stock_code)
  SELECT *,
  case
  when profit_pct >10 then 'Strong Gain'
    when profit_pct >0 then 'Mild Gain'
      when profit_pct =0 then 'Break Even'
      when profit_pct >-10 then 'Mild Loss'
      else 'Strong Loss'
      end as status,
RANK () over (order by profit_pct  desc) as rank_by_pct,
sum(avg_cost_price *stock_quantity) over (order by profit_pct  desc,stock_code asc) as cumulative_invested 
from bang
order by rank_by_pct asc, stock_code asc
