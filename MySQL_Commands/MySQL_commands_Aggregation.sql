-- Count all the books 
use Library;
select Count(*) from books;

-- count all the author name
use Library;
select count(author_fname) from books;

use Library;
select  count(DISTINCT author_lname) from books;

use Library;
select count (DISTINCT released_year) from books;

--how many title contains word 'the'
use Library;
select title from books where title like '%the%'

--how many title contains word 'the'
use Library;
select count ( *) from books where title like '%the%'

--Group by data
use Library;
select author_fname, count(*) from books  Group by author_fname;

