"Count the number of user events performed by MacBookPro users-ID 9653



Apple
Easy
ID 9653


https://platform.stratascratch.com/coding/9653-count-the-number-of-user-events-performed-by-macbookpro-users?code_type=3

Count the number of user events performed by MacBookPro users.
Output the result along with the event name.
Sort the result based on the event count in the descending order.

"
"Query"
select event_name, count(device) from playbook_events
where lower(device) like "macbook p%"
group by event_name