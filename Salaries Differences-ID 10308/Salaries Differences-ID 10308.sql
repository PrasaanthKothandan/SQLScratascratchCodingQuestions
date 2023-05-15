"Salaries Differences-ID 10308


Interview Question Date: November 2020

LinkedIn
Dropbox
Easy
ID 10308

https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=3


Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the absolute difference in salaries.

"
"Query"
with cte1 as(select c.department,d.department_id, max(d.salary) as mak
from db_employee d
join  db_dept as c on c.id=d.department_id
where c.department like "marketing" )
,cte2 as (select c.department,d.department_id, max(d.salary)as eng
from db_employee d
join  db_dept as c on c.id=d.department_id
where c.department like "engineering")

select ABS(eng-mak) from cte1,cte2