# 1211. Queries Quality and Percentage
# Write your MySQL query statement below
select q.query_name,
    round(avg(q.rating/q.position), 2) as quality,
    round(sum(rating<3) / count(*) * 100, 2) as poor_query_percentage
from Queries as q
where query_name is not null
group by q.query_name
