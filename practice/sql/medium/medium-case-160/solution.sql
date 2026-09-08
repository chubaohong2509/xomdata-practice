-- Xom Data · Delivery performance by size class
-- Problem: https://xomdata.com/practice/medium-case-160
-- Solved: 2026-09-08

with bang as (SELECT t.vehicle_type,t.capacity_tons,COUNT(s.id) as shipment_count,
case 
when t.capacity_tons >=10 then 'Large Truck'
when t.capacity_tons >=5 then 'Medium Truck'
else 'Small Truck'
end as size_class,
sum(case when d.results
 ='success' then 1 else 0 end) as delivered from trucks t
 left join shipments s on s.truck_id=t.id
 left join deliveries d on d.shipment_id=s.id
 group by t.vehicle_type,t.capacity_tons)
 select vehicle_type,capacity_tons,shipment_count,size_class,delivered,round(delivered*100.00/shipment_count,2) as delivery_rate,
 rank() over (PARTITION BY size_class ORDER BY delivered*100.00/shipment_count desc) as rank_in_size from bang
 ORDER BY size_class asc, rank_in_size asc, vehicle_type asc
