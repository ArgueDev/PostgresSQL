SELECT
    first_name,
    last_name,
    followers
FROM
    users
WHERE
    followers BETWEEN 4600
    AND 4700
ORDER BY
    followers asc;


SELECT
    count(*) as total_users,
    MIN(followers) as min_followers,
    MAX(followers) as max_followers,
    ROUND(AVG(followers)) as avg_followers,
    SUM(followers) / COUNT(*) as avg_manual
FROM
    users;

select
    first_name,
    last_name,
    followers
from
    users
where
    followers = 4
    or followers = 4999;


select
    count(*),
    followers
from
    users
where
    followers = 4
    or followers = 4999
group by
    followers;


select
    count(*),
    followers
from
    users
where
    followers BETWEEN 4500
    and 4999
group by
    followers
order by
    followers desc;


select
    count(*) as total,
    country
from
    users
group by
    country
having
    count(*) > 5
order by
    count(*) desc;


select
    count(*),
    SUBSTRING (email, (position ('@' in email) + 1)) as dominio
from
    users
group by
    SUBSTRING (email, (position ('@' in email) + 1))
having
    count(*) > 1
order by
    SUBSTRING (email, (position ('@' in email) + 1)) desc;
