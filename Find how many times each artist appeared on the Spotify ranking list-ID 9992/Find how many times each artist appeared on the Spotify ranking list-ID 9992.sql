"Find how many times each artist appeared on the Spotify ranking list-ID 9992



Spotify
Easy
ID 9992

https://platform.stratascratch.com/coding/9992-find-artists-that-have-been-on-spotify-the-most-number-of-times?code_type=3

Find how many times each artist appeared on the Spotify ranking list
Output the artist name along with the corresponding number of occurrences.
Order records by the number of occurrences in descending order.

"
"Query"
select artist,count(artist) as occur from spotify_worldwide_daily_song_ranking
group by artist
order by occur desc