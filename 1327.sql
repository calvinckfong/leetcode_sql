# 1327. List the Products Ordered in a Period
# Write your MySQL query statement below
select product_name,
    sum(case when year(order_date)=2020 and month(order_date)=2 
        then unit else 0 end) as unit
from Orders as o
left join Products as p
    on o.product_id = p.product_id
group by o.product_id
having unit>=100
