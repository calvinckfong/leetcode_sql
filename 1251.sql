# 1251. Average Selling Price
# Write your MySQL query statement below
select p.product_id, 
    round(ifnull(sum(price * units) / sum(units), 0),2) as average_price
from Prices as p
left join UnitsSold as u
    on p.product_id = u.product_id
    and u.purchase_date >= p.start_date
    and u.purchase_date <= p.end_date
group by product_id
