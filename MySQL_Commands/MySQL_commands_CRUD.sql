--CRUD
--C = Create
--R = Read
--U = Update
--D = Delete
--Creating the data
create database Animals;

Use Animals;

create table cats (
    cat_id INT AUTO_INCREMENT PRIMARY KEY,
    cat_name VARCHAR(100) NOT NULL,
    cat_breed VARCHAR(100) NOT NULL,
    cat_age INT
);

Use Animals;

INSERT INTO
    cats (cat_name, cat_breed, cat_age)
VALUES
    ('Whiskers', 'Siamese', 3),
    ('Fluffy', 'Persian', 5),
    ('Tiger', 'Bengal', 2),
    ('Mittens', 'Maine Coon', 4),
    ('Shadow', 'Black Shorthair', 1),
    ('Luna', 'Russian Blue', 2),
    ('Oliver', 'British Shorthair', 6),
    ('Simba', 'Savannah', 3),
    ('Kitty', 'Ragdoll', 5),
    ('Leo', 'Scottish Fold', 2);

-- Reading the data
Use Animals;

select
    *
from
    cats Use Animals;

select
    cat_breed
from
    cats Use Animals;

select
    cat_name,
    cat_id
from
    cats Use Animals;

select
    cat_id,
    cat_name
from
    cats --remember it follows the position of column in tables
    Use Animals;

select
    cat_id,
    cat_name,
    cat_age
from
    cats
where
    cat_age <= 4;

Use Animals;

select
    cat_id,
    cat_name,
    cat_age
from
    cats
where
    cat_id = cat_age;

--Renaming the name of the column for purticular query
Use Animals;

select
    cat_id as id,
    cat_name as name,
    cat_age as Age
from
    cats
where
    cat_id = cat_age;

--Update the data or table (using 'SET' here)
show databases use Workplace;

update
    Employees
SET
    Last_name = 'Updated during excerise';

use Workplace;

select
    *
from
    Employees use Workplace;

update
    Employees
SET
    Last_name = 'Adding something new',
    First_name = 'Checking it twice';

use Workplace;

update
    Employees
SET
    Middle_name = 'Gupta'
Where
    First_name = 'Anna';

use Workplace;

update
    Employees
SET
    Age = 12
Where
    First_name = "William";

--Deleting the data
Use Animals;

drop table cats;

Use Animals;

drop database Animals;

Use Animals;

Delete from
    cats --everything is deleted. 
    Use Animals;

Delete from
    cats
where
    cat_name = "Simba";

Use Animals;

Delete from
    cats
where
    cat_age = 5;

Use Animals;

select
    *
from
    cats;

--CRUD exercise day 2
create database Clothes;

show databases;

use Clothes;

create table Shirts (
    Shirts_id INT AUTO_INCREMENT PRIMARY KEY,
    Shirts_type VARCHAR(100) NOT NULL,
    Shirts_color VARCHAR(100) NOT NULL,
    Shirts_size VARCHAR(10) NOT NULL,
    Last_worn VARCHAR(100)
);

use Clothes;

INSERT INTO
    Shirts (
        Shirts_type,
        Shirts_color,
        Shirts_size,
        Last_worn
    )
VALUES
    ('T-Shirt', 'Red', 'M', '2023-10-20'),
    ('Polo Shirt', 'Blue', 'L', '2023-10-18'),
    ('Dress Shirt', 'White', 'S', '2023-10-19'),
    ('Tank Top', 'Black', 'XL', NULL),
    ('Flannel Shirt', 'Plaid', 'M', '2023-10-17'),
    ('Hoodie', 'Gray', 'L', '2023-10-15'),
    ('Sweatshirt', 'Green', 'M', '2023-10-20'),
    ('Button-Up Shirt', 'Striped', 'XL', '2023-10-16'),
    ('Pullover Sweater', 'Navy', 'L', NULL),
    ('Turtleneck', 'Brown', 'M', '2023-10-14'),
    ('Long-Sleeve Shirt', 'Yellow', 'S', '2023-10-13'),
    ('Henley', 'Maroon', 'L', '2023-10-12'),
    ('V-Neck Sweater', 'Teal', 'XL', '2023-10-11'),
    ('Graphic Tee', 'Black', 'M', '2023-10-10'),
    ('Sleeveless Blouse', 'Pink', 'S', '2023-10-09'),
    ('Hawaiian Shirt', 'Hawaiian Print', 'M', NULL),
    ('Oxford Shirt', 'Blue', 'L', '2023-10-08'),
    ('Tunic', 'Purple', 'XL', '2023-10-07'),
    ('Tie-Dye Shirt', 'Rainbow', 'M', '2023-10-06'),
    ('Fitted Shirt', 'Gray', 'S', '2023-10-05');

use Clothes;

select
    *
from
    Shirts;

use Clothes;

DESC Shirts;

--add one shirt
use Clothes;

INSERT INTO
    Shirts (
        Shirts_type,
        Shirts_color,
        Shirts_size,
        Last_worn
    )
VALUES
    ('T-Shirt', 'Green', 'XS', '2023-10-30'),
    --print only shirt-type and shirt color 
    use Clothes;

select
    Shirts_type as article,
    Shirts_color as color
from
    Shirts
where
    Shirts_size = 'S' --update polo shirt size to L
    use Clothes;

update
    Shirts
SET
    Shirts_size = 'L'
where
    Shirts_type = 'T-Shirt';

--update last-worn
use Clothes;

update
    Shirts
SET
    Last_worn = '0'
where
    Last_worn = '2023-10-05';

--Delete from shirt where size is S
use Clothes;

Delete from
    Shirts
where
    Shirts_size = 's';

use Clothes;

DRop table Shirts;

drop database Clothes;