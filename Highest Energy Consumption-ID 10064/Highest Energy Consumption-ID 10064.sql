"Highest Energy Consumption-ID 10064

Meta/Facebook
Medium
ID 10064

HTTPS Link:https://platform.stratascratch.com/coding/10064-highest-energy-consumption?code_type=3

Find the date with the highest total energy consumption from the Meta/Facebook data centers. Output the date along with the total energy consumption across all data centers.

"
"Query"
with cte3 as (with cte2 as(with cte1 as (select date,consumption from fb_eu_energy union select date,consumption from fb_asia_energy union select date,consumption from fb_na_energy)
select date,sum(consumption) as s from cte1
group by date)
select date, dense_rank() over(order by s desc) as ma,s from cte2)
select date, s from cte3 where ma =1
