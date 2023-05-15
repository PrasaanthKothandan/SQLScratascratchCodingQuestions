"Order Details-ID 9913

Interview Question Date: May 2019

Amazon
Shopify
Easy
ID 9913


https://platform.stratascratch.com/coding/9913-order-details?code_type=3

Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order.

"
"Query"

select  c.first_name,o.order_date,o.order_details,o.total_order_cost from orders as o
join customers as c on c.id=o.cust_id
where c.first_name like "Jill" or c.first_name like "Eva"