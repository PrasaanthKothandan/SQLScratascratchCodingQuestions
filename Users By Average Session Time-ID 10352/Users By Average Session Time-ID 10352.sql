"Users By Average Session Time-ID 10352

Meta/Facebook
Medium
ID 10352


HTTPS Link:https://platform.stratascratch.com/coding/10352-users-by-avg-session-time?code_type=3

Calculate each user's average session time. A session is defined as the time difference between a page_load and page_exit. For simplicity, assume a user has only 1 session per day and if there are multiple of the same events on that day, consider only the latest page_load and earliest page_exit. Output the user_id and their average session time.

"
"Query"
WITH cte AS (SELECT user_id, DATE(timestamp) AS d,
MAX(CASE WHEN action = 'page_load' THEN timestamp ELSE NULL END) AS last_page_load,
    MIN(CASE WHEN action = 'page_exit' THEN timestamp ELSE NULL END) AS first_page_exit
FROM facebook_web_log
GROUP BY user_id, d)
SELECT user_id, d, TIMEDIFF(first_page_exit, last_page_load) AS session_time
 FROM cte 
