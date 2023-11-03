Show databases;

Create database Business;

drop database Business use Business;

drop table Customers;

use Business;

CREATE TABLE Customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL,
    phone VARCHAR(200) NOT NULL
);

use Business;

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date VARCHAR(100) NOT NULL,
    price VARCHAR(100) NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

use Business;

INSERT INTO
    Customers (first_name, last_name, email, phone)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '4567890'),
    (
        'Jane',
        'Smith',
        'jane.smith@example.com',
        '6543210'
    ),
    (
        'Robert',
        'Johnson',
        'robert.j@example.com',
        '5555555'
    ),
    (
        'Mary',
        'Wilson',
        'mary.w@example.com',
        '8888888'
    ),
    (
        'David',
        'Brown',
        'david.b@example.com',
        '7777777'
    ),
    (
        'Sarah',
        'Williams',
        'sarah.w@example.com',
        '1234567'
    ),
    (
        'Michael',
        'Anderson',
        'michael.a@example.com',
        '9876543'
    ),
    (
        'Emily',
        'Taylor',
        'emily.t@example.com',
        '2223333'
    ),
    (
        'Christopher',
        'Lee',
        'chris.l@example.com',
        '8887777'
    ),
    (
        'Laura',
        'Harris',
        'laura.h@example.com',
        '4443333'
    ),
    (
        'Daniel',
        'Martin',
        'daniel.m@example.com',
        '5553333'
    ),
    (
        'Jessica',
        'Wilson',
        'jessica.w@example.com',
        '3331111'
    ),
    (
        'William',
        'White',
        'william.w@example.com',
        '9998888'
    ),
    (
        'Amanda',
        'Clark',
        'amanda.c@example.com',
        '7779999'
    ),
    (
        'Matthew',
        'Thomas',
        'matthew.t@example.com',
        '6662222'
    ),
    (
        'Elizabeth',
        'Brown',
        'elizabeth.b@example.com',
        '9337777'
    ),
    (
        'James',
        'Hall',
        'james.h@example.com',
        '2444666'
    ),
    (
        'Ashley',
        'Moore',
        'ashley.m@example.com',
        '1115555'
    ),
    (
        'John',
        'Taylor',
        'john.t@example.com',
        '3221111'
    );

use Business;

select
    *
from
    Customers;

-- Insert orders data
use Business;

INSERT INTO
    orders (date, price, customer_id)
VALUES
    ('2023-10-01', '150.00', 1),
    ('2023-10-02', '200.00', 2),
    ('2023-10-03', '75.50', 3),
    ('2023-10-04', '120.00', 4),
    ('2023-10-05', '85.25', 5),
    ('2023-10-06', '110.00', 6),
    ('2023-10-07', '250.75', 7),
    ('2023-10-08', '95.00', 8),
    ('2023-10-09', '180.50', 9),
    ('2023-10-10', '135.00', 10),
    ('2023-10-11', '175.25', 11),
    ('2023-10-12', '70.00', 12),
    ('2023-10-13', '130.75', 13),
    ('2023-10-14', '110.00', 14),
    ('2023-10-15', '220.50', 15),
    ('2023-10-16', '160.00', 16),
    ('2023-10-17', '195.25', 17),
    ('2023-10-18', '95.00', 18),
    ('2023-10-19', '75.50', 19),
    ('2023-10-20', '200.00', 19);

use Business;

select
    *
from
    orders;

use Business;

select
    *
from
    Customers
    join orders on Customers.id = orders.customer_id use Business;

select
    first_name,
    last_name,
    date,
    price
from
    Customers
    join orders on orders.customer_id = Customers.id --checking the sequence effect    
    use Business;

select
    *
from
    orders
    join Customers on Customers.id = orders.customer_id --Sum the amount spent on the business   
    use Business;

select
    first_name,
    last_name,
    sum(price) as total
from
    Customers
    join orders on Customers.id = orders.customer_id
group by
    first_name,
    last_name
order by
    total desc --left join
    use Business;

select
    first_name,
    last_name,
    price
from
    Customers
    left join orders on orders.customer_id = Customers.id drop database school create database school;

use school;

create table students (
    id int AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100)
) use school;

create table papers (
    id int AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) not NULL,
    grade int(100) not NULL,
    student_id int (10) not NULL,
    FOREIGN KEY (student_id) REFERENCES students(id)
) use school;

INSERT INTO
    students (first_name)
VALUES
    ('Caleb'),
    ('Samantha'),
    ('Raj'),
    ('Carlos'),
    ('Lisa');

use school;

INSERT INTO
    papers (student_id, title, grade)
VALUES
    (1, 'My First Book Report', 60),
    (1, 'My Second Book Report', 75),
    (2, 'Russian Lit Through The Ages', 94),
    (2, 'De Montaigne and The Art of The Essay', 98),
    (4, 'Borges and Magical Realism', 89);

use school;

select
    first_name,
    title,
    grade
from
    papers
    inner join students on students.id = papers.student_id
order by
    grade desc;

use school;

select
    first_name,
    title,
    grade
from
    students
    left join papers on students.id = papers.student_id;

use school;

select
    first_name,
    ifnull(title, 'Missing'),
    ifnull(grade, 0) as Grades
from
    students
    left join papers on students.id = papers.student_id;

use school;

select
    first_name,
    ifnull(avg(grade), 0) as grade
from
    students
    left join papers on students.id = papers.student_id
group by
    first_name
order by
    grade desc;

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

use school;

select
    first_name,
    ifnull(avg(grade), 0) as grade,
    CASE
        WHEN ifnull(avg(grade), 0) <= 75 then 'PASSING'
        ELSE 'FAILING'
    END as Passing_status
from
    students
    left join papers on students.id = papers.student_id
group by
    first_name
order by
    grade desc;

show databases;

create database tv_db;

use tv_db;

create table Reviewers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL
) use tv_db;

create TABLE Series (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    released_year YEAR,
    genre VARCHAR(100)
) use tv_db;

CREATE TABLE Reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rating DEC(3, 1) NOT NULL,
    Series_id INT(10) NOT NULL,
    Reviewer_id INT(10) NOT NULL,
    FOREIGN KEY (Series_id) REFERENCES Series(id),
    FOREIGN KEY (Reviewer_id) REFERENCES Reviewers(id)
) use tv_db;

INSERT INTO
    Series (title, released_year, genre)
VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');

use tv_db;

select
    *
from
    Series;

use tv_db;

INSERT INTO
    Reviewers (first_name, last_name)
VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');

use tv_db;

select
    *
from
    Reviewers;

use tv_db;

INSERT INTO
    Reviews(Series_id, Reviewer_id, rating)
VALUES
    (1, 1, 8.0),
(1, 2, 7.5),
(1, 3, 8.5),
(1, 4, 7.7),
(1, 5, 8.9),
    (2, 1, 8.1),
(2, 4, 6.0),
(2, 3, 8.0),
(2, 6, 8.4),
(2, 5, 9.9),
    (3, 1, 7.0),
(3, 6, 7.5),
(3, 4, 8.0),
(3, 3, 7.1),
(3, 5, 8.0),
    (4, 1, 7.5),
(4, 3, 7.8),
(4, 4, 8.3),
(4, 2, 7.6),
(4, 5, 8.5),
    (5, 1, 9.5),
(5, 3, 9.0),
(5, 4, 9.1),
(5, 2, 9.3),
(5, 5, 9.9),
    (6, 2, 6.5),
(6, 3, 7.8),
(6, 4, 8.8),
(6, 2, 8.4),
(6, 5, 9.1),
    (7, 2, 9.1),
(7, 5, 9.7),
    (8, 4, 8.5),
(8, 2, 7.8),
(8, 6, 8.8),
(8, 5, 9.3),
    (9, 2, 5.5),
(9, 3, 6.8),
(9, 4, 5.8),
(9, 6, 4.3),
(9, 5, 4.5),
    (10, 5, 9.9),
    (13, 3, 8.0),
(13, 4, 7.2),
    (14, 2, 8.5),
(14, 3, 8.9),
(14, 4, 8.9);

use tv_db;

select
    *
from
    Reviews;

-- print table with title and rating limited to 15
use tv_db;

select
    title,
    rating
from
    Series
    join Reviews on Series.id = Reviews.Series_id
order by
    title
limit
    15;

-- print table with title and avg rating
use tv_db;

select
    title,
    Round(AVG(rating), 2) as avg_rating
from
    Series
    join Reviews on Series.id = Reviews.Series_id
group by
    title
order by
    avg_rating;

--print first_name. last name and rating
use tv_db;

select
    first_name,
    last_name,
    rating
from
    Reviewers
    join Reviews on Reviews.Series_id = Reviewers.id --print unreviewed series
    use tv_db;

select
    title as unreviewed_series
from
    Series
    left join Reviews on Reviews.Series_id = Series.id
where
    rating is NULL;

use tv_db;

select
    *
from
    Series
    left join Reviews on Reviews.Series_id = Series.id --Print genre, avg rating
    use tv_db;

select
    genre,
    Round(AVG(rating), 4) as AVG_rating
from
    Series
    join Reviews on Series.id = Reviews.Series_id
group by
    genre
order by
    AVG_rating;

use tv_db;

select
    genre,
    Round(AVG(rating), 4) as AVG_rating
from
    Series
    right join Reviews on Series.id = Reviews.Series_id
group by
    genre
order by
    AVG_rating;

--print table where rating is null
use tv_db;

select
    title,
    genre,
    rating
from
    Series
    left join Reviews on Series.id = Reviews.Series_id
where
    rating is NULL;

--case statement
use tv_db;

select
    first_name,
    last_name,
    count(rating),
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    case
        WHEN count(rating) >= 'o' then 'Active'
        else 'Inactive'
    end as 'Status'
FROM
    Reviewers
    left JOIN Reviews ON Reviewers.id = Reviews.Reviewer_id
GROUP BY
    first_name,
    last_name;


--if statement
use tv_db;
select concat(first_name, ' ', last_name) as Reviewer_Name, count(rating) as Rating, IFNULL(MIN(rating), 0) as Max, IFNULL(MAX(rating), 0), IFNULL(ROUND(AVG(rating)), 4) as Avg, if(count(rating) > 0, 'Active', 'Inactive') as Status from Reviewers left join Reviews on Reviewers.id = Reviews.Reviewer_id GROUP by Reviewer_Name order by Rating;