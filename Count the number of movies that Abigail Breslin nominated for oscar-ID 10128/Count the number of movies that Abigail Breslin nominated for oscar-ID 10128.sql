"Count the number of movies that Abigail Breslin nominated for oscar-ID 10128

Google
Netflix
Easy
ID 10128

https://platform.stratascratch.com/coding/10128-count-the-number-of-movies-that-abigail-breslin-nominated-for-oscar?code_type=3

Count the number of movies that Abigail Breslin was nominated for an oscar.

"
"Solution Query"
select count(*) from oscar_nominees
where lower(nominee) like "Abigail%"