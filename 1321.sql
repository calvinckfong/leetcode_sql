# 1321. Restaurant Growth
# Write your MySQL query statement below
select 
    visited_on,
    amount,
    average_amount
from (
    select
        visited_on,
        days,
        sum(amount) over (order by visited_on asc rows between 6 preceding and current row) as amount,
        round(avg(amount) over (order by visited_on asc rows between 6 preceding and current row), 2) as average_amount
    from (
        select
            visited_on,
            sum(amount) as amount,
            sum(1) over (order by visited_on) as days
        from Customer
        group by visited_on    
    ) as daily
) as summary
where days>6
