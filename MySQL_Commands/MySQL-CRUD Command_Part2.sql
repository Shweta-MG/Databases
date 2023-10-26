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
INSERT INTO cats (cat_name, cat_breed, cat_age)
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
select * from cats 


Use Animals;
select cat_breed from cats 


Use Animals;
select cat_name, cat_id from cats 

Use Animals;
select cat_id, cat_name from cats --remember it follows the position of column in tables


Use Animals;
select cat_id,  cat_name, cat_age from cats where cat_age<=4;


Use Animals;
select cat_id,  cat_name, cat_age from cats where cat_id = cat_age;


--Renaming the name of the column for purticular query
Use Animals;
select cat_id as id,  cat_name as name , cat_age as Age from cats where cat_id = cat_age;



--Update the data or table (using 'SET' here)


show databases

use Workplace;
update Employees SET Last_name='Updated during excerise';


use Workplace;
select * from Employees


use Workplace;
update Employees SET Last_name='Adding something new', First_name='Checking it twice';

use Workplace;
update Employees SET Middle_name='Gupta' Where First_name='Anna';

use Workplace;
update Employees SET Age=12 Where First_name="William";



--Deleting the data

Use Animals;
drop table cats;



Use Animals;
drop database Animals;
 


Use Animals;
Delete from cats --everything is deleted. 


Use Animals;
Delete from cats where cat_name="Simba";




Use Animals;
Delete from cats where cat_age=5;

Use Animals;
select * from cats;