"Premium vs Freemium-ID 10300

Microsoft
Hard
ID 10300

HTTPS Link:https://platform.stratascratch.com/coding/10300-premium-vs-freemium?code_type=3

Find the total number of downloads for paying and non-paying users by date. Include only records where non-paying customers have more downloads than paying customers. The output should be sorted by earliest date first and contain 3 columns date, non-paying downloads, paying downloads.

"
"Query"
with cte1 as (select  D.date as Date,Sum(D.downloads) as paying from ms_download_facts as D
join ms_user_dimension as A on A.user_id=D.user_id
join ms_acc_dimension as C on C.acc_id=A.acc_id
where C.paying_customer LIKE "yes"
group by D.date,C.paying_customer)
,cte2 as(
select D.date as Date,Sum(D.downloads) as notpaying from ms_download_facts as D
join ms_user_dimension as A on A.user_id=D.user_id
join ms_acc_dimension as C on C.acc_id=A.acc_id
where C.paying_customer not LIKE "yes"
group by D.date,C.paying_customer)
, cte3 as
(select C1.Date as Date,sum(C1.paying) as pay,sum(C2.notpaying) as nonpay from cte1 as C1
JOIN cte2 as C2 on C1.Date=C2.Date
group by C1.Date)
select * from cte3
WHERE nonpay>pay

