# 1158. Market Analysis I
# Write your MySQL query statement below

select 
    u.user_id as buyer_id,
    u.join_date,
    ifnull(o.orders_in_2019, 0) as orders_in_2019
from Users as u 
left join (
    select 
        buyer_id,
        sum(year(order_date)=2019) as orders_in_2019
    from Orders
    group by buyer_id
) as o
on o.buyer_id = u.user_id
group by u.user_id
