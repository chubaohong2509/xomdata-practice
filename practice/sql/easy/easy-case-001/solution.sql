-- Xom Data · Safety training results
-- Problem: https://xomdata.com/practice/easy-case-001
-- Solved: 2026-08-28

-- Viết SQL của bạn ở đây
SELECT trainee_name,score,
case 
WHEN score >=70 then 'Pass' 
else 'Fail' 
end as result
from trainees
