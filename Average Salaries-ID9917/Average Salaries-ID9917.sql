"Average Salaries


Salesforce
Glassdoor
Easy
ID 9917

https://platform.stratascratch.com/coding/9917-average-salaries?code_type=3

Compare each employee's salary with the average salary of the corresponding department.
Output the department, first name, and salary of employees along with the average salary of that department.

"
"Query"
select department,first_name,salary,avg(salary) over(partition by department) from employee;