-- CHAR
-- VARCHAR
-- DECIMAL DEC(5, 2) MAXIMUM DIGITS CAN BE SAVED DEC(999, 99)
-- FLOAT  
--DATE
--DATETIME
--TIME DURATION
--Create data base
create database World;

use World;

CREATE TABLE people (
    person_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_date DATE,
    birth_time TIME,
    birth_date_time DATETIME
);

use World;

desc people;

use World;

drop TABLE people;

use World;

INSERT INTO
    people (name, birth_date, birth_time, birth_date_time)
VALUES
    (
        'John Doe',
        '1990-05-15',
        '14:30:00',
        '1990-05-15 14:30:00'
    ),
    (
        'Jane Smith',
        '1985-12-10',
        '10:15:00',
        '1985-12-10 10:15:00'
    ),
    (
        'Robert Johnson',
        '1995-09-20',
        '16:45:00',
        '1995-09-20 16:45:00'
    ),
    (
        'Mary Wilson',
        '1982-03-05',
        '08:00:00',
        '1982-03-05 08:00:00'
    ),
    (
        'David Brown',
        '2000-07-25',
        '12:00:00',
        '2000-07-25 12:00:00'
    );

use World;

INSERT INTO
    people (name, birth_date, birth_time, birth_date_time)
VALUES
    (
        'John Chris',
        '1990-06-11',
        '00:00:09',
        '1990-06-11 00:00:09'
    );

use World;

select
    *
from
    people;

--Current time, date dynamically
select
    curtime();

select
    curdate();

select
    now();

select
    current_timestamp();

use World;

INSERT INTO
    people (name, birth_date, birth_time, birth_date_time)
VALUES
    ('Johnny Chris', curdate(), curtime(), now()),
    (
        'Johnny Chris Jr.',
        curdate(),
        curtime(),
        current_timestamp()
    );

--Extracting information related to date like weekday, months etc
use World;

select
    birth_date,
    week(birth_date),
    weekday(birth_date),
    weekofyear(birth_date)
from
    people;

use World;

select
    birth_date,
    day(birth_date),
    dayofweek(birth_date),
    dayofyear(birth_date),
    monthname(birth_date)
from
    people;

--Extracting information related to time like hour minutes and seconds
use World;

select
    birth_time,
    hour(birth_time),
    minute(birth_time)
from
    people;

--Now use birth_day_time
use World;

select
    birth_date_time,
    hour(birth_date_time),
    minute(birth_date_time),
    date(birth_date_time),
    day(birth_date_time),
    month(birth_date_time),
    monthname(birth_date_time)
from
    people;

--Formatting date and time
--%a, etc take it form documentation on mySQL
--https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_date-format
use World;

select
    concat_ws(
        ' ',
        monthname(birth_date_time),
        day(birth_date_time),
        year(birth_date_time)
    )
from
    people;

use World;

select
    date_format(birth_date, '%a %b %c %W')
from
    people;

use World;

select
    name,
    date_format(birth_date_time, 'Born on: %r')
from
    people;

--Date math calculation 
--https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_datediff
use World;

select
    name,
    birth_date,
    datediff(curdate(), birth_date)
from
    people;

use World;

select
    name,
    birth_date_time,
    datediff(curdate(), birth_date_time)
from
    people;

use World;

select
    name,
    date_add(curdate(), interval 1 year)
from
    people;

use World;

select
    name,
    date_add(birth_date, interval 1 year)
from
    people;

use World;

select
    name,
    date_sub(birth_date, interval 1 year)
from
    people;



