"Highest Target Under Manager-ID 9905

Salesforce
Medium
ID 9905


HTTPS Link:https://platform.stratascratch.com/coding/9905-highest-target-under-manager?code_type=3

Find the highest target achieved by the employee or employees who works under the manager id 13. Output the first name of the employee and target achieved. The solution should show the highest target achieved under manager_id=13 and which employee(s) achieved it.


"
"Query"
select first_name,target from salesforce_employees
where manager_id = 13 and target = (select max(target) from salesforce_employees where manager_id = 13)