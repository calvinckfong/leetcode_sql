# 1193. Monthly Transactions I
# Write your MySQL query statement below
select 
    DATE_FORMAT(trans_date, '%Y-%m') as month,
    country,
    count(*) as trans_count, 
    sum(T.state='approved') as approved_count,
    sum(T.amount) as trans_total_amount,
    sum( if(T.state='approved', T.amount, 0) ) as approved_total_amount
from Transactions as T
group by month, country
