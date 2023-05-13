"Top Ranked Songs-ID 9991



Spotify
Medium
ID 9991


HTTPS Link:https://platform.stratascratch.com/coding/9991-top-ranked-songs?code_type=3

Find songs that have ranked in the top position. Output the track name and the number of times it ranked at the top. Sort your records by the number of times the song was in the top position in descending order.


"
"Query"
select trackname,count(date) as nooftimes from spotify_worldwide_daily_song_ranking
where position ="1"
group by trackname
order by nooftimes desc