"Top Businesses With Most Reviews
HTTPS Link:https://platform.stratascratch.com/coding/10048-top-businesses-with-most-reviews?code_type=3
Yelp
Medium
ID 10048

Find the top 5 businesses with most reviews. Assume that each row has a unique business_id such that the total reviews for each business is listed on each row. Output the business name along with the total number of reviews and order your results by the total reviews in descending order.
"
"Query"
select name,review_count from yelp_business
order by review_count desc limit 5