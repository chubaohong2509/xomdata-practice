-- Xom Data · Classify student academic performance
-- Problem: https://xomdata.com/practice/medium-case-124
-- Solved: 2026-08-02

SELECT hs.full_name, hs.student_code, round(avg(d.final_score), 2) as avg_score , 
case 
    when round(avg(d.final_score), 2) >=9 then 'Excellent'
    when round(avg(d.final_score), 2) >=8 then 'Good'
    when round(avg(d.final_score), 2) >=7 then 'Fair'
    when round(avg(d.final_score), 2) >=5 then 'Average'
    when round(avg(d.final_score), 2) <5 then 'Poor'
end as grade,
DENSE_RANK() OVER(
    ORDER BY avg(d.final_score) DESC) as class_rank 
from students hs 
INNER JOIN scores d on d.student_id  = hs.id
group by hs.full_name    
order by avg_score DESC, d.student_id asc
limit 20;
