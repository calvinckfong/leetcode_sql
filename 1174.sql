# 1174. Immediate Food Delivery II
# Write your MySQL query statement below

select 
    round(sum(order_date=customer_pref_delivery_date) / count(order_date) * 100, 2)
        as immediate_percentage
from delivery as d
join (select customer_id, 
            min(order_date) as first_date
        from Delivery 
        group by customer_id) as o
    on d.customer_id = o.customer_id
where d.order_date = o.first_date
