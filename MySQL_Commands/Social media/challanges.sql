--find 5 users who have been around longest
use socialMediaClone;
select * from users order by created_at asc limit 5; 

--what day of week most users registered on 
use socialMediaClone;
select dayname(created_at) as day, count(*) as count from users group by day order by count desc;