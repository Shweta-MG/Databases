create database Library;

use Library;

CREATE TABLE books (
	book_id INT AUTO_INCREMENT,
	title VARCHAR(100),
	author_fname VARCHAR(100),
	author_lname VARCHAR(100),
	released_year INT,
	stock_quantity INT,
	pages INT,
	PRIMARY KEY(book_id)
);

use Library;

INSERT INTO
	books (
		title,
		author_fname,
		author_lname,
		released_year,
		stock_quantity,
		pages
	)
VALUES
	(
		'The Namesake',
		'Jhumpa',
		'Lahiri',
		2003,
		32,
		291
	),
	(
		'Norse Mythology',
		'Neil',
		'Gaiman',
		2016,
		43,
		304
	),
	('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
	(
		'Interpreter of Maladies',
		'Jhumpa',
		'Lahiri',
		1996,
		97,
		198
	),
	(
		'A Hologram for the King: A Novel',
		'Dave',
		'Eggers',
		2012,
		154,
		352
	),
	('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
	(
		'The Amazing Adventures of Kavalier & Clay',
		'Michael',
		'Chabon',
		2000,
		68,
		634
	),
	('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
	(
		'A Heartbreaking Work of Staggering Genius',
		'Dave',
		'Eggers',
		2001,
		104,
		437
	),
	('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
	(
		'What We Talk About When We Talk About Love: Stories',
		'Raymond',
		'Carver',
		1981,
		23,
		176
	),
	(
		"Where I'm Calling From: Selected Stories",
		'Raymond',
		'Carver',
		1989,
		12,
		526
	),
	('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
	(
		'Cannery Row',
		'John',
		'Steinbeck',
		1945,
		95,
		181
	),
	(
		'Oblivion: Stories',
		'David',
		'Foster Wallace',
		2004,
		172,
		329
	),
	(
		'Consider the Lobster',
		'David',
		'Foster Wallace',
		2005,
		92,
		343
	);

use Library;

select
	*
from
	books;

use Library;

DESC books;

--get full name of the author (String functions)
use Library;

select
	concat (author_fname, ' ', author_lname)
from
	books;

use Library;

select
	concat_ws(' ', author_fname, author_lname)
from
	books;

use Library;

select
	concat_ws('_', author_fname, author_lname)
from
	books;

-- Substring function
select
	substring ('Hello world', 2, 4);

select
	substring ('Hello world', 4);

--Will select until end of the string.
use Library;

select
	Substring (title, 1, 20)
from
	books;

use Library;

select
	substring (author_lname, 1, 1)
from
	books;

-- concat string while using sbustring 
use Library;

select
	concat (substring (title, 1, 10), '...') as Concated_Title
from
	books;

-- Multiple substrings and concat function 
use Library;

select
	concat_ws (
		' ',
		substring (author_fname, 1, 2),
		substring (author_lname, 1, 2)
	) as Author_Short_name
from
	books;

--replace string
use Library;

select
	replace (title, 'k', 'KKKKKKK')
from
	books -- reverse strings
	use Library;

select
	reverse(author_fname)
from
	books;

--reverse and concat combo
use Library;

select
	concat_ws (' ', author_fname, reverse(author_lname))
from
	books;

--concat, substring and reverse combo
use Library;

select
	concat_ws(
		' ',
		author_fname,
		reverse(substring(author_fname, 1, 4))
	)
from
	books;

-- know number of characters in strings
use Library;

select
	book_id,
	char_length (title),
	title
from
	books;

-- upper and lower case in the string
use Library;

select
	upper (title)
from
	books;

use Library;

select
	Ucase (title)
from
	books;

use Library;

select
	lower (title)
from
	books;

use Library;

select
	Lcase (title)
from
	books;

use Library;

select
	concat_ws(' ', title, upper(author_fname), '!!!!!')
from
	books;

--Insert a string into some other string
use Library;

select
Insert
	(title, 6, 0, '!!!!')
from
	books;

use Library;

--New string will be insert at 6 and will replace next 4 letters
select
Insert
	(title, 6, 4, '!!!!')
from
	books;

--repeat a string many times
use Library;

select
	repeat (title, 3)
from
	books;

--Trim some part of string
check example on mySQL documentation
select
	trim () --reverse and uppercase this sentences
select
	Ucase (reverse('
Jump into learning for less')) as Funny;

-- select title and replace all spaces with an arrow
use Library;

select
	replace(title, ' ', '->') as title
from
	books;

--author last in one column and reverse of last name in another column
use Library;

select
	author_lname as forwards,
	reverse(author_lname) as backwards
from
	books;

-- title of the boo, was released in year release year
use Library;

select
	concat_ws(' ', title, 'was released in', released_year)
from
	books;

--book title with length of each title
use Library;

select
	title as Book_Name,
	char_length(title) as Character_count
from
	books;

--short title with 10 character+..., auther name and quantity og book
use Library;
select
	concat(substring(title, 1, 10), '...') as Short_title,
	concat(author_lname, ', ', author_fname) as Author,
	concat_ws(' ', stock_quantity, 'in stock') as quantity
from
	books

