# 1378. Replace Employee ID With The Unique Identifier
# Write your MySQL query statement below
select EmployeeUNI.unique_id, Employees.name from Employees
    left join EmployeeUNI
        on EmployeeUNI.id = Employees.id;
