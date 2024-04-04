# 620. Not Boring Movies
# Write your MySQL query statement below
select *
from cinema
    where id%2
    and not description = 'boring'
order by rating desc
