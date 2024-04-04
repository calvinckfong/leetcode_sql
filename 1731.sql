# 1731. The Number of Employees Which Report to Each Employee
# Write your MySQL query statement below
select e.employee_id,
    e.name,
    count(m.reports_to) as reports_count,
    round(avg(m.age)) as average_age
from Employees as e
join Employees as m 
    on m.reports_to = e.employee_id
group by e.employee_id
having reports_count>0
order by e.employee_id
