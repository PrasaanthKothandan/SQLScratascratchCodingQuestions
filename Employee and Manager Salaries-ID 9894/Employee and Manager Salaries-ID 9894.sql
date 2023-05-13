"Employee and Manager Salaries-ID 9894


Walmart
Best Buy
Dropbox
Medium
ID 9894



HTTPS Link:https://platform.stratascratch.com/coding/9894-employee-and-manager-salaries?code_type=3
Find employees who are earning more than their managers. Output the employee's first name along with the corresponding salary.


"
"Query"
with cte1 as(select first_name,salary,if(salary>(select salary from employee where id = manager_id), salary,0) as sal from employee)
select * from cte1
where sal>0
