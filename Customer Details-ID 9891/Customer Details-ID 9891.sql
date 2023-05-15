"Customer Details-ID 9891


Interview Question Date: April 2019

Apple
Amazon
Easy
ID 9891

https://platform.stratascratch.com/coding/9891-customer-details?code_type=3

Find the details of each customer regardless of whether the customer made an order. Output the customer's first name, last name, and the city along with the order details.
You may have duplicate rows in your results due to a customer ordering several of the same items. Sort records based on the customer's first name and the order details in ascending order.


"
"Query"

select c.first_name,c.last_name,c.city,o.order_details from customers as c
Left join orders as o on c.id=o.cust_id
