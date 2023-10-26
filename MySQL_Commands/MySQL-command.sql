-- show list of all the databases available
show databases;

-- Create databases
create database Soap_Store;
create database Tea_Store;
create database Slime_Store;


-- Delete  databases
drop database Soap_Store;
drop database Slime_Store;

-- Check which database is in use
use Soap_Store;
select database(); 


USE Tea_Store;
select database(); 


--Exercise one
create database Tweeter;

drop database Tweeter;



USE Tweeter;
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(15) NOT NULL,
    full_name VARCHAR(50),
    email VARCHAR(100) NOT NULL,
    join_date DATE NOT NULL
);


-- Insert sample user data
USE Tweeter;
INSERT INTO Users (username, full_name, email, join_date) 
VALUES
    ('user123', 'John Doe', 'john.doe@email.com', '2023-09-10'),
    ('tweetMaster', 'Jane Smith', 'jane.smith@email.com', '2023-09-12'),
    ('happyCoder', 'David Johnson', 'david.johnson@email.com', '2023-09-14'),
    ('tweetQueen', 'Sarah Williams', 'sarah.williams@email.com', '2023-09-15');

-- Know coluns in table
-- Know or describe more about the table, so check it with this command
USE Tweeter;
Show columns from Users;


USE Tweeter;
desc Users;





USE Tweeter;
select * from Users;

-- Create a table for tweets
USE Tweeter;
CREATE TABLE Tweets (
    tweet_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    tweet_content VARCHAR(140) NOT NULL,
    tweet_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    favorites INT DEFAULT 0
);

--Delete or drop the table
USE Tweeter;
DROP TABLE Tweets

-- Know coluns in table
-- Know or describe more about the table, so check it with this command
USE Tweeter;
Show columns from Tweets;

USE Tweeter;
desc Tweets;


-- Insert sample tweet data
USE Tweeter;
INSERT INTO Tweets (user_id, tweet_content) VALUES
    (1, 'Hello, Twitter! This is my first tweet.'),
    (2, 'Excited to join Twitter and share my thoughts.'),
    (3, 'Coding is my passion. #programming #coding'),
    (4, 'Just had a great coffee. #coffeelover #morningvibes');

USE Tweeter;
select * from Tweets;


--Exercie two
--create a pastries table
--Inspect it
--drop the table
create database desert;

use desert;
create table Pastries (
    pastries_id INT AUTO_INCREMENT PRIMARY KEY,
    Pastries_name VARCHAR(50) NOT NULL,
    Quanity INT NOT NULL
);

USE desert;
desc Pastries;

USE desert;
drop table Pastries;



create database world;

use world;
create table people (    
    people_id INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    Age INT NOT NULL);

use world;
insert into people ( people_id, First_name, Last_name, Age )
VALUES (1, 'Mario\'s pizza' , 'Mario', 7),
(2, 'Shweta\'s pizza', 'Gupta', 3);


use world;
insert into people ( people_id, First_name, Last_name, Age )
VALUES (3, "Mario's pizza" , 'Mario', 7),
(4, "Shweta's pizza", 'Gupta', 3);

""



use world;
drop table people;

use world;
select * from people;


use world;
create table peopleNew (    
    people_id INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL  DEFAULT 'I forgot to write a name here',
    Last_name VARCHAR(50) NOT NULL DEFAULT 'I forgot to write a name here',
    Age INT NOT NULL DEFAULT '99');


use world;
insert into peopleNew ( people_id, First_name, Last_name, Age )
VALUES 
(1, NULL , 'Mario', 7)


use world;
drop table peopleNew


use world;
select * from peopleNew;



use world;
insert into peopleNew ( people_id, First_name, Last_name, Age )
VALUES (3, NULL , 'Mario', 7),
(4, "Shweta's pizza", NULL, 3);


use world;
create table peopleNew1 (    
    people_id INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL  DEFAULT 'I forgot to write a name here',
    Last_name VARCHAR(50) NOT NULL DEFAULT 'I forgot to write a name here',
    Age INT NOT NULL DEFAULT '99');


insert into peopleNew1 (people_id, First_name, Last_name, Age )
VALUES (1,  ,  , );


use world;
select * from peopleNew1;




use world;
create table peopleNew3 (    
    people_id INT AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Age INT NOT NULL);

use world;
insert into peopleNew3 (First_name, Age) 
Values ("shweta", 4),
("Mridul", 3),
("Tanu", 5),
("Gunnu", 7)


use world;
Select * from peopleNew3;