# 1965. Employees With Missing Information
# Write your MySQL query statement below
select *
from 
(
select employee_id
from Employees as e
where e.employee_id not in 
    ( select employee_id from Salaries )

union 

select employee_id
from Salaries as s
where s.employee_id not in 
    ( select employee_id from Employees )
) as grouped
order by employee_id
