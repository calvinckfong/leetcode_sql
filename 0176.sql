# 176. Second Highest Salary
# Write your MySQL query statement below

select
    # max() is a key to return null when only 1 record
    max(salary) as SecondHighestSalary
from (
    select distinct salary
    from Employee
    order by salary desc
    limit 1 offset 1
) as s

