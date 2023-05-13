"Find the top 10 ranked songs in 2010-ID 9650

Spotify
Medium
ID 9650




HTTPS Link:https://platform.stratascratch.com/coding/9650-find-the-top-10-ranked-songs-in-2010?code_type=3

What were the top 10 ranked songs in 2010?
Output the rank, group name, and song name but do not show the same song twice.
Sort the result based on the year_rank in ascending order.



"
"Query"
select distinct song_name, year_rank, group_name from billboard_top_100_year_end
where year = 2010 and year_rank <= 10
order by year_rank 
