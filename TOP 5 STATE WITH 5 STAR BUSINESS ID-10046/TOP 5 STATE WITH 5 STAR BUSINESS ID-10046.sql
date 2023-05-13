"Top 5 States With 5 Star Businesses


Yelp
Hard
ID 10046

HTTPS Link:https://platform.stratascratch.com/coding/10046-top-5-states-with-5-star-businesses?code_type=3

Find the top 5 states with the most 5 star businesses. Output the state name along with the number of 5-star businesses and order records by the number of 5-star businesses in descending order. In case there are ties in the number of businesses, return all the unique states. If two states have the same result, sort them in alphabetical order.

"
"Query"
with cte1 as (select state, count(stars) c, rank() over(order by count(*) desc) as ra from yelp_business
where stars = 5
group by state
order by c desc) 
select state, c
from cte1 
where ra < 6
