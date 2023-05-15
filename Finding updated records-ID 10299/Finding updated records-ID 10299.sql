"Finding Updated Records-ID 10299

Microsoft
Easy
ID 10299




HTTPS Link:https://platform.stratascratch.com/coding/10299-finding-updated-records?code_type=3

We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. Find the current salary of each employee assuming that salaries increase each year. Output their id, first name, last name, department ID, and current salary. Order your list by employee ID in ascending order.
"
"Query"
select distinct(id),first_name,last_name,max(salary),department_id from ms_employee_salary
group by id