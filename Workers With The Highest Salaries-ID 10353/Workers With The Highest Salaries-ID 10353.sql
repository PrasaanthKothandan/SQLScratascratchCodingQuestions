"Workers With The Highest Salaries-ID 10353

Amazon
DoorDash
Medium
ID 10353

HTTPS Link:https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=3

You have been asked to find the job titles of the highest-paid employees.


Your output should include the highest-paid title or multiple titles with the same salary.
"
"Query"
select w.worker_title from title w
join worker t on t.worker_id=w.worker_ref_id 
where salary = (select max(salary) from worker)