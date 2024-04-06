# 602. Friend Requests II: Who Has the Most Friends
# Write your MySQL query statement below

select 
    all_user.id,
    ifnull(a, 0) + ifnull(r, 0) as num

from (
    (select distinct requester_id as id from RequestAccepted)
    union
    (select distinct accepter_id as id from RequestAccepted)
) as all_user

left join (
    select
        requester_id as id,
        count(distinct accepter_id) as a
    from RequestAccepted
    group by requester_id    
) as acc
on acc.id = all_user.id

left join (
    select
        accepter_id as id,
        count(distinct requester_id) as r
    from RequestAccepted
    group by accepter_id 
) as req
on req.id = all_user.id

order by num desc
limit 1
