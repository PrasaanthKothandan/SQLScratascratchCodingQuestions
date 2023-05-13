"Number Of Units Per Nationality-ID 10156

Airbnb
Medium
ID 10156


HTTPS Link:https://platform.stratascratch.com/coding/10156-number-of-units-per-nationality?code_type=3

Find the number of apartments per nationality that are owned by people under 30 years old.
Output the nationality along with the number of apartments.
Sort records by the apartments count in descending order.
"
"Query writen by Prasaanth"
with cte1 as (select nationality,host_id from airbnb_hosts
where age < 30
group by host_id)
select nationality,count(nationality) from cte1
where nationality like "USA"
group by nationality