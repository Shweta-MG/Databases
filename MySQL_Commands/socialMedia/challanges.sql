--find 5 users who have been around longest
use socialMediaClone;

select
    *
from
    users
order by
    created_at asc
limit
    5;

--what day of week most users registered on 
use socialMediaClone;

select
    dayname(created_at) as day,
    count(*) as count
from
    users
group by
    day
order by
    count desc;

--Find all users who have not send any photos
use socialMediaClone;

select
    userName,
    image_url
from
    users
    left join photos on photos.user_id = users.id
where
    image_url is NULL;

use socialMediaClone;

select
    count(*)
from
    users
    left join photos on photos.user_id = users.id
where
    image_url is NULL;

select
    first_name,
    title,
    grade
from
    papers
    inner join students on students.id = papers.student_id
order by
    grade desc;

--Most liked photo / most popular photo
use socialMediaClone;

select
    image_url,
    count (*) as count
from
    photos
    join likes on likes.photo_id = photos.id
group by
    image_url
order by
    count desc;

--who won --username of most likes photo
use socialMediaClone;

select
    userName,
    photos.id,
    image_url,
    count (*) as count
from
    photos
    join likes on likes.photo_id = photos.id
    join users on users.id = photos.user_id
group by
    photos.id
order by
    count desc
limit 1;






use socialMediaClone;

show tables;

use socialMediaClone;

describe users;

use socialMediaClone;

describe photos;

use socialMediaClone;

describe likes;