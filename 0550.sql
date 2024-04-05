# 550. Game Play Analysis IV
# Write your MySQL query statement below

with 
temp as (
    select player_id, min(event_date) as first_day
    from Activity
    group by player_id
),
temp2 as (
    select a.player_id, 
        sum(datediff(a.event_date, t.first_day)=1) as replay
    from Activity as a
    join temp as t
        on a.player_id = t.player_id
    group by a.player_id
)

select
    round(sum(replay) / count(player_id), 2) as fraction 
from temp2
