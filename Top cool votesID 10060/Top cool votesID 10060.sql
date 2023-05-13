"Top Cool Votes


Interview Question Date: March 2020

Yelp
Medium
ID 10060
HTTPS Link:https://platform.stratascratch.com/coding/10060-top-cool-votes?code_type=3

Find the review_text that received the highest number of  'cool' votes.
Output the business name along with the review text with the highest numbef of 'cool' votes.

"
"Query"
with cte1 as (select business_name,review_text,dense_rank()over(order by cool desc) as ran from yelp_reviews
group by review_text)
select business_name,review_text from cte1
where ran = 1