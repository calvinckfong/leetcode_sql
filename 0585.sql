# 585. Investments in 2016
# Write your MySQL query statement below

select round(sum(tiv_2016), 2) as tiv_2016
from (
    select
        tiv_2016,
        count(pid) over (partition by lat, lon) as loc_cnt,
        count(pid) over (partition by tiv_2015) as tiv_cnt
    from Insurance
) as grp
where loc_cnt=1 and tiv_cnt>1

    

