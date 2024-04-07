# 262. Trips and Users
# Write your MySQL query statement below
select
    request_at as Day,
    round(1 - sum( status='completed' ) / count(*), 2) as 'Cancellation Rate'
from Trips
where request_at between "2013-10-01" and "2013-10-03"
    and client_id not in (select users_id from Users where banned='Yes')
    and driver_id not in (select users_id from Users where banned='Yes')
group by request_at
