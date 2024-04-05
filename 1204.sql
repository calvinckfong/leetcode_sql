# 1204. Last Person to Fit in the Bus
# Write your MySQL query statement below

select
    person_name
from (
    select 
        person_name,
        sum(weight) over (order by turn) as total
    from queue
) as T
where T.total <= 1000
order by T.total desc
limit 1
