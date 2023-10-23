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
INSERT INTO Users (username, full_name, email, join_date) VALUES
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
