# 1341. Movie Rating
# Write your MySQL query statement below

(select
    name as results
from (
    select 
        user_id,
        count(user_id) as cnt
    from MovieRating
    group by user_id
) as r
join Users as u 
on u.user_id = r.user_id
order by cnt desc, name
limit 1)

# 'union all' merge all even duplicated (test case 18)
union all

(select
    title as results
from (
    select
        movie_id,
        avg(rating) as avg_rating
    from MovieRating
    where year(created_at)=2020 and month(created_at)=2
    group by movie_id
) as r
join Movies as m
on m.movie_id = r.movie_id
order by avg_rating desc, title
limit 1)
