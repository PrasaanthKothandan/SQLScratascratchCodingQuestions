"Highest Salary In Department-ID 9897
Twitter
Asana
Medium
ID 9897

HTTPS Link:https://platform.stratascratch.com/coding/9897-highest-salary-in-department?code_type=3

Find the employee with the highest salary per department.
Output the department name, employee's first name along with the corresponding salary.
"
"Query"
with cte1 as(select department,first_name,salary,dense_rank() over(partition by department order by salary desc) as ran from employee)
select department,first_name,salary from cte1
where ran=1