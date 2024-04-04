# 197. Rising Temperature
# Write your MySQL query statement below
select w2.id from weather w1, weather w2
    where w2.temperature > w1.temperature 
        and to_days(w2.recordDate) - to_days(w1.recordDate) = 1
