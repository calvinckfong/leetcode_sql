# 570. Managers with at Least 5 Direct Reports
# Write your MySQL query statement below
select m.name
from employee e
join employee m on m.id = e.managerId
group by e.managerId
having count(*)>=5

