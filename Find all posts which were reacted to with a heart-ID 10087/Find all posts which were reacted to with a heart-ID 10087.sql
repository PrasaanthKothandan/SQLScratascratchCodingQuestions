"Find all posts which were reacted to with a heart-ID 10087



Meta/Facebook
Easy
ID 10087



https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart?code_type=3

Find all posts which were reacted to with a heart. For such posts output all columns from facebook_posts table.

"
"Query"
select distinct(fp.post_id),fp.poster,fp.post_text,fp.post_keywords,fp.post_date from facebook_posts as fp
join facebook_reactions as fr on fr.post_id=fp.post_id
where fr.reaction like "heart"
