--Create a view of table -- virtual table
use tv_db;
select * from Reviews join Series on Reviews.Series_id = Series.id
join Reviewers on Reviews.Reviewer_id = Reviewers.id;

--create a view 
use tv_db;
CREATE VIEW Full_View AS select title, released_year, genre, rating, first_name, last_name from Reviews join Series on Reviews.Series_id = Series.id
join Reviewers on Reviews.Reviewer_id = Reviewers.id;

use tv_db;
show tables;