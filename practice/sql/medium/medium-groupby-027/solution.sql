-- Xom Data · Average score per subject
-- Problem: https://xomdata.com/practice/medium-groupby-027
-- Solved: 2026-09-09

with bang as (SELECT s.subject_name,s.credits,count(s.id) as student_count, round(avg(g.final_score),2)as avg_score,sum(case when g.final_score>=5 then 1 else 0 end) as countpass from subjects s
inner JOIN grades g on g.subject_id=s.id
GROUP BY s.subject_name)
SELECT subject_name,credits, student_count, avg_score,
round(countpass*100.00/student_count,2
) as pass_rate, 
rank() over (order by avg_score desc) as rank_by_avg,
NTILE(4) over(order by avg_score desc,subject_name asc) as difficulty_quartile from bang
order by rank_by_avg asc, subject_name asc
