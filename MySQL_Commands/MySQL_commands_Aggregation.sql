-- Count all the books 
use Library;

select
    Count(*)
from
    books;

-- count all the author name
use Library;

select
    count(author_fname)
from
    books;

use Library;

select
    count(DISTINCT author_lname)
from
    books;

use Library;

select
    count (DISTINCT released_year)
from
    books;

--how many title contains word 'the'
use Library;

select
    title
from
    books
where
    title like '%the%' --how many title contains word 'the'
    use Library;

select
    count (*)
from
    books
where
    title like '%the%' --Group by data
    use Library;

select
    author_fname,
    count(*)
from
    books
Group by
    author_fname;

--sort group by
use Library;

select
    released_year as Book_Published,
    count(*) as Numbers_books
from
    books
Group by
    released_year desc;

-- Min and max value Lowest in Alphabet/number
use Library;

select
    min(title)
from
    books;

use Library;

select
    max(pages)
from
    books;

-- Subseries 
use Library;

select
    *
from
    books
where
    pages =(
        select
            min(pages)
        from
            books
    );

--select a Book which is released earliest
use Library;

select
    title,
    released_year
from
    books
where
    released_year = (
        select
            min(released_year)
        from
            books
    );

--grouping by multiple columns
use Library;

select
    author_fname,
    author_lname,
    count (*)
from
    books
group by
    author_lname,
    author_fname;

--
use Library;

select
    concat(author_fname, ' ', author_lname) as author,
    count(*)
from
    books
group by
    author;

-- combining the complex search
use Library;

select
    author_fname,
    min(released_year) as Oldest_release,
    max(released_year) as Newest_release,
    count(*)
from
    books
group by
    author_fname;