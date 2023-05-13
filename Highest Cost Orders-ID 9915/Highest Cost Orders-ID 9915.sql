"Highest Cost Orders-ID 9915

Amazon
Shopify
Medium
ID 9915


HTTPS Link:https://platform.stratascratch.com/coding/9915-highest-cost-orders?code_type=3


Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. If customer had more than one order on a certain day, sum the order costs on daily basis. Output customer's first name, total cost of their items, and the date.

For simplicity, you can assume that every first name in the dataset is unique.

"
"Query writen by Prasaanth"

select c.first_name,o.order_date,sum(o.total_order_cost) as totalcost from orders as o
join customers as c on c.id=o.cust_id 
where date(o.order_date) between  "2019-02-01" and "2019-05-01"
group by o.order_date,o.cust_id
order by totalcost desc limit 1