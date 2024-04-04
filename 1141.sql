# 1141. User Activity for the Past 30 Days I
# Write your MySQL query statement below
select 
    a.activity_date as day,
    count(distinct a.user_id) as active_users
from Activity as a
where datediff('2019-07-27', a.activity_date) < 30
    and a.activity_date <= '2019-07-27'
group by day
