# 601. Human Traffic of Stadium
# Write your MySQL query statement below

select distinct s1.id, s1.visit_date, s1.people
from 
    (select * from Stadium where people >= 100) as s1,
    (select * from Stadium where people >= 100) as s2,
    (select * from Stadium where people >= 100) as s3
where (s1.id+1 = s2.id and s2.id+1 = s3.id) 
    or (s1.id+1 = s2.id and s1.id-1 = s3.id) 
    or (s1.id-1 = s2.id and s2.id-1 = s3.id) 
order by s1.visit_date
