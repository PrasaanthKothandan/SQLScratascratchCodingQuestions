"Find the rate of processed tickets for each type-ID 9781

Meta/Facebook
Medium
ID 9781

HTTPS Link:https://platform.stratascratch.com/coding/9781-find-the-rate-of-processed-tickets-for-each-type?code_type=3

Find the rate of processed tickets for each type.
"
"Query"
select type,avg(processed) from facebook_complaints
group by type