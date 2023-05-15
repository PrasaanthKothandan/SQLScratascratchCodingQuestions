"Find the base pay for Police Captains ID 9972

City of San Francisco
Easy
ID 9972



HTTPS Link:https://platform.stratascratch.com/coding/9972-find-the-base-pay-for-police-captains?code_type=3

Find the base pay for Police Captains.
Output the employee name along with the corresponding base pay.
"
"Query"
select employeename,basepay from sf_public_salaries
where jobtitle like "CAPTAIN%"