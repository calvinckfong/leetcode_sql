# 610. Triangle Judgement
# Write your MySQL query statement below
select *, 
    if (t.x+t.y>t.z and t.x+t.z>t.y and t.y+t.z>t.x,
        "Yes", "No") as triangle
from Triangle as t
