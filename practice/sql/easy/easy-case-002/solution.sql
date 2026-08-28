-- Xom Data · Sizing parcels by weight
-- Problem: https://xomdata.com/practice/easy-case-002
-- Solved: 2026-08-28

-- Viết SQL của bạn ở đây
SELECT parcel_code,weight_kg,
case 
when weight_kg < 5 then 'Small'
when weight_kg <= 20 then 'Medium'
else 'Large'
end as size_label
from parcels
