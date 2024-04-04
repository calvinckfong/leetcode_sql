# 584. Find Customer Referee
# Write your MySQL query statement below
SELECT name From customer
    WHERE referee_id is null
        OR referee_id != 2
