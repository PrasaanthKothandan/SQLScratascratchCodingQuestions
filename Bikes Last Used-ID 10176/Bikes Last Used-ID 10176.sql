"Bikes Last Used-ID 10176

Lyft
DoorDash
Easy
ID 10176





HTTPS Link:https://platform.stratascratch.com/coding/10176-bikes-last-used?code_type=3

Find the last time each bike was in use. Output both the bike number and the date-timestamp of the bike's last use (i.e., the date-time the bike was returned). Order the results by bikes that were most recently used.

"
"Query"
select bike_number,max(end_time) from dc_bikeshare_q1_2012
group by bike_number
order by end_time desc