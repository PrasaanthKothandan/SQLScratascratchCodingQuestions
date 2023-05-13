"Number of violations-ID 9728

City of San Francisco
Medium
ID 9728



HTTPS Link:https://platform.stratascratch.com/coding/9728-inspections-that-resulted-in-violations?code_type=3

You're given a dataset of health inspections. Count the number of violation in an inspection in 'Roxanne Cafe' for each year. If an inspection resulted in a violation, there will be a value in the 'violation_id' column. Output the number of violations by year in ascending order.

"
"Query"
with cte1 as (select business_name,business_id,year(inspection_date) as years,violation_id from sf_restaurant_health_violations)
select business_name,years,count(violation_id) from cte1
where business_name like "Roxanne Cafe"
group by years