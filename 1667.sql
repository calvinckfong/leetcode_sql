# 1667. Fix Names in a Table
# Write your MySQL query statement below
select user_id,
    concat(left(upper(name), 1), substring(lower(name), 2, length(name))) as name 
from Users
order by user_id
