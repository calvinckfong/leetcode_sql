# 1661. Average Time of Process per Machine
# Write your MySQL query statement below

with 
    start_time as (select * from activity where activity_type = 'start'),
    end_time as (select * from activity where activity_type = 'end')
select st.machine_id, round(avg(et.timestamp-st.timestamp), 3) as processing_time
from start_time st
join end_time et
on st.machine_id = et.machine_id
and st.process_id = et.process_id
group by st.machine_id
