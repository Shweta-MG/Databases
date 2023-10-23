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
