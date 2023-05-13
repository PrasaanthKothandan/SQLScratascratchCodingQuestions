"Largest Olympics-ID 9942

ESPN
Medium
ID 9942


HTTPS Link:https://platform.stratascratch.com/coding/9942-largest-olympics?code_type=3

Find the Olympics with the highest number of athletes. The Olympics game is a combination of the year and the season, and is found in the 'games' column. Output the Olympics along with the corresponding number of athletes.
"
"Query"
select games,count(distinct(id)) as c from olympics_athletes_events
group by games
order by c desc limit 1 