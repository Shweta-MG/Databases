--Aggregations
--Group by
--Orderby
--Min/Max
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

-- combining the complex search
use Library;

select
    author_fname,
    author_lname,
    min(released_year) as Oldest_release,
    max(released_year) as Newest_release,
    count(*)
from
    books
group by
    author_fname,
    author_lname;

--Summing the values up
use Library;

select
    author_fname,
    author_lname,
    min(released_year) as Oldest_release,
    max(released_year) as Newest_release,
    sum(pages),
    count(*)
from
    books
group by
    author_fname,
    author_lname;

--Exercise
use Library;

select
    count(*)
from
    books;

--Exercise How many books each years
use Library;

select
    released_year,
    count(*)
from
    books
Group by
    released_year;

--Exercise -- Print total number of books in stock
use Library;

select
    sum(stock_quantity)
from
    books;

--Exercise Average release year for author
use Library;

select
    author_fname,
    author_lname,
    Avg(released_year)
from
    books
group by
    author_fname,
    author_lname;

--Exercise Find the full name of the author who wrote the longest book
--solution a
use Library;

select
    concat(author_fname, ' ', author_lname) as author,
    pages
from
    books
where
    pages = (
        select
            max(pages)
        from
            books
    );

--solution b
use Library;

select
    concat(author_fname, ' ', author_lname) as author,
    pages
from
    books
where
    pages = (
        select
            pages
        from
            books
        order by
            pages desc
        limit
            1) 
    
    
    
    

--Exercise release year of books, number of books then average number of pages
    use Library;

select
    released_year as 'Year',
    count(*) as '# Books',
    avg(pages) as 'Average Pages'
from
    books
group by
    released_year asc;