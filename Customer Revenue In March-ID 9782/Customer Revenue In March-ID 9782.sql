"Customer Revenue In March-ID 9782

Meta/Facebook
Amazon
Medium
ID 9782

HTTPS Link:https://platform.stratascratch.com/coding/9782-customer-revenue-in-march?code_type=3
Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019.


Output the revenue along with the customer id and sort the results based on the revenue in descending order.

"
"Query"
select  cust_id, sum(total_order_cost) as rev from orders
where month(order_date) =3 and year (order_date)=2019
group by cust_id 
order by rev desc
