"Find the most profitable company in the financial sector of the entire world along with its continent-ID 9663



Forbes
Easy
ID 9663




https://platform.stratascratch.com/coding/9663-find-the-most-profitable-company-in-the-financial-sector-of-the-entire-world-along-with-its-continent?code_type=3



Find the most profitable company from the financial sector. Output the result along with the continent.


"
"Query"
with cte1 as 
(select company,continent, rank() over(order by profits desc) as prora from forbes_global_2010_2014)
select company,continent from cte1
where prora =1