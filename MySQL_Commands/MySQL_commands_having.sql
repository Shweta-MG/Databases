--Show all the available databases
show databases;

--show tables from the database
SHOW TABLES
FROM
    tv_db;

use tv_db;

select
    *
from
    Full_View;

--having clause
use tv_db;

select
    title,
    avg(rating) as avg_rating
from
    Full_View
group by
    title
    having avg_rating >= 2
    order by avg_rating desc;

--Roll up
--gives avg of entire table
use tv_db;
select title, avg(rating) as rating from Full_View  group by title with ROLLUP;


select @@global.sql_mode;

select @@session.sql_mode;