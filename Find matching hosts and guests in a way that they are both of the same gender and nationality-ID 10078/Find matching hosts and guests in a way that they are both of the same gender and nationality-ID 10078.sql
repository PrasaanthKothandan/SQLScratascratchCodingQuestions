"Find matching hosts and guests in a way that they are both of the same gender and nationality-ID 10078

Airbnb
Medium
ID 10078


HTTPS Link:https://platform.stratascratch.com/coding/10078-find-matching-hosts-and-guests-in-a-way-that-they-are-both-of-the-same-gender-and-nationality?code_type=3


Find matching hosts and guests pairs in a way that they are both of the same gender and nationality.
Output the host id and the guest id of matched pair.

"
"Query writen by Prasaanth"
select distinct(ah.host_id),ag.guest_id from airbnb_hosts as ah
join airbnb_guests as ag on ag.gender=ah.gender
where ag.nationality like ah.nationality