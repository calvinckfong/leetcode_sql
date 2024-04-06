# 626. Exchange Seats
# Write your MySQL query statement below
select 
    # change 'id' instead of 'student'
    case
        when id%2=1 and id=(select max(id) from Seat) then id
        when id%2=1 then id+1
        when id%2=0 then id-1
    end as id,
    student
from Seat
order by id # sort by id again
