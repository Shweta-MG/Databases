,
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