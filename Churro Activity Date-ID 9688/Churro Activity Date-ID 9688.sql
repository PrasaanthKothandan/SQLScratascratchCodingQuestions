"Churro Activity Date-ID 9688


City of Los Angeles
Easy
ID 9688

https://platform.stratascratch.com/coding/9688-churro-activity-date?code_type=3


Find the activity date and the pe_description of facilities with the name 'STREET CHURROS' and with a score of less than 95 points.

"
"Query"

select activity_date,pe_description from los_angeles_restaurant_health_inspections
where facility_name like "STREET CHURROS" and score < 95