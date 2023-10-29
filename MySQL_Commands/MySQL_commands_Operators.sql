show databases;

use Library;

select
    *
from
    books;

use Library;

select
    title,
    released_year
from
    books
where
    released_year != 1945
order by
    released_year;

use Library;

select
    title,
    author_fname
from
    books
where
    author_fname like '%eil%';

use Library;

select
    title,
    author_fname
from
    books
where
    author_fname not like '%eil%';

use Library;

select
    title,
    author_fname,
    pages
from
    books
where
    pages > 400
order by
    pages;

use Library;

select
    title,
    pages,
    released_year
from
    books
where
    released_year < 2001;

use Library;

select
    title,
    pages released_year,
    author_fname
from
    books
where
    pages <= 200;

use Library;

select
    title,
    pages released_year,
    author_fname
from
    books
where
    pages >= 500;

use Library;

--AND means both all true conditions are true
select
    title,
    pages,
    author_fname,
    released_year
from
    books
where
    author_fname = 'john'
    AND pages >= 200;

use Library;

select
    *
from
    books
where
    author_fname Like '%ne%'
    AND pages >= 400 --'OR' means at least one condition should be true
    use Library;

select
    *
from
    books
where
    author_fname Like '%ne%'
    OR pages >= 700 -- -BETWEEN'
    use Library;

select
    *
from
    books
where
    pages between 400
    AND 600
order by
    pages;

use Library;

select
    *
from
    books
where
    pages >= 400
    and pages <= 600
order by
    pages;

show databases;

Use World;

select
    *
from
    people;

use World;

select
    *
from
    people
where
    birth_time BETWEEN CAST('09:00:00' as Time)
    AND CAST('12:00:00' as Time) use World;

select
    *
from
    people
where
    HOUR(birth_time) BETWEEN 12
    AND 16
order by
    birth_time;

--IN and NOT IN queries
use Library;

select
    *
from
    books
where
    released_year >= 2000
    AND released_year % 2 = 1;

--% is reminder operator
use Library;

select
    *
from
    books
where
    released_year >= 2000
    AND released_year % 2 != 0
    and pages >= 500
order by
    released_year;

--CASE statement This exactly like if else statement in JS.
use Library;

select
    author_fname,
    author_lname,
    title,
    pages,
    CASE
        WHEN pages BETWEEN 0
        AND 100 THEN 'Small story book'
        WHEN pages BETWEEN 101
        AND 200 THEN 'One night long book'
        WHEN pages BETWEEN 201
        AND 300 THEN 'A really long book'
        ELSE 'A really really really long book '
    END AS Summary
from
    books
order by
    pages;

--Rewriting above query This exactly like if else statement in JS.
use Library;

select
    author_fname,
    author_lname,
    title,
    pages,
    CASE
        WHEN pages <= 100 THEN 'Small story book'
        WHEN pages <= 200 THEN 'One night long book'
        WHEN pages <= 300 THEN 'A really long book'
        ELSE 'A really really really long book '
    END AS Summary
from
    books
order by
    pages;

IS NULL
and IS NOT NULL use Library;

select
    *
from
    books
where
    author_fname IS NOT NULL;

use Library;

select
    *
from
    books
where
    author_lname IS NULL;

--Exercise
--select all books written before 1980
use Library;

select
    *
from
    books
where
    released_year < 1980
order by
    released_year;

--select all the books written by last name 'Eggers' or 'Chabon'
use Library;

select
    *
from
    books
where
    author_lname = 'Eggers'
    or author_lname = 'Chabon' --select all books pages 100 to 200
    use Library;

select
    *
from
    books
where
    pages BETWEEN 100
    AND 200
order by
    pages;

--select all books where author last name starts from 'c' of 's'
use Library;

select
    *
from
    books
where
    author_lname like 'c%'
    OR author_lname LIKE 'S%';

use Library;

select
    *
from
    books;


CASE statement
use Library;

select
    title,
    concat(author_fname, ' ', author_lname) as Author,
    CASE
        WHEN title like '%stories' THEN 'Short Stories'
        WHEN title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
from
    books;

--Print author fName, Lname 
use Library;
select concat(author_fname, ' ', author_lname) as Author, CASE
WHEN count(*) = 1 THEN '1 book'
ELSE concat(count(*), ' ', 'book') 
end as count
from books
group by author;

use Library;
select concat(author_fname, ' ', author_lname) as  Author, concat(count(*), ' ', 'Book/s') as Count from books group by Author order by Count;