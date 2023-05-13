"Most Profitable Companies


Forbes
Medium
ID 10354


HTTPS Link:https://platform.stratascratch.com/coding/10354-most-profitable-companies?code_type=3

Find the 3 most profitable companies in the entire world.
Output the result along with the corresponding company name.
Sort the result based on profits in descending order.
"
"Query"
with cte1 as (select 
dense_rank() over(order by profits desc) as dens,company,profits from forbes_global_2010_2014
)
select company,profits from cte1
where dens <= 3
group by company
