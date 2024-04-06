# 586. Customer Placing the Largest Number of Orders
# Write your MySQL query statement below
select customer_number from Orders
group by customer_number
order by count(order_number) desc
limit 1
