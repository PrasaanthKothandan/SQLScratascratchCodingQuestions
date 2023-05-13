"Ranking Most Active Guests-ID 10159


Airbnb
Medium
ID 10159


HTTPS Link:https://platform.stratascratch.com/coding/10159-ranking-most-active-guests?code_type=3


Rank guests based on the number of messages they've exchanged with the hosts. Guests with the same number of messages as other guests should have the same rank. Do not skip rankings if the preceding rankings are identical.
Output the rank, guest id, and number of total messages they've sent. Order by the highest number of total messages first.


"
"Query writen by Prasaanth"
with cte1 as(select id_guest,sum(n_messages) as sumofmess from airbnb_contacts
group by id_guest)
select id_guest,sumofmess,dense_rank() over (order by sumofmess desc) from cte1