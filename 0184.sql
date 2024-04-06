# 184. Department Highest Salary
# Write your MySQL query statement below
select 
    Department, Employee, Salary
from (
    select 
        d.name as Department,
        e.name as Employee,
        e.salary as Salary,
        dense_rank() over (partition by departmentId order by salary desc) as rnk
    from Employee as e
    left join Department as d
    on e.departmentId = d.id
) as grp
where rnk=1
