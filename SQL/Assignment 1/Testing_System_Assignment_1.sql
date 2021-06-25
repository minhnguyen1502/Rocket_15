create database Testing_System_Assignment1;
use Testing_System_Assignment1;

create table department (
department_id Int,
department_name varchar(50)
);

create table position (
position_id int,
position_name varchar(50)
);

create table Accounts (
Account_id INT,
Email varchar(70),
username varchar(70),
department_id INT,
position_id int,
create_date date
);

create table `Groups` (
group_id int,
group_name varchar(50),
create_id int,
create_date date
);

create table GroupAccount (
 create_id int,
 accoound_id int,
 join_date date
 );
 
 create table typequestion (
 type_id int,
 type_name varchar(70)
 );
 
 create table categoryquestion (
 category_id int,
 category_name varchar(100)
 );
 
 create table question (
 question_id int,
 content varchar(100),
 category_id int,
 type_id int,
 creator_id int,
 create_date date
 );
 
 create table answer (
 answer_id int,
 content varchar(50),
 quesion_id int,
 iscorrect varchar(10)
 );
 
 create table Exam (
 exam_id int,
 `Code` varchar(20),
 title varchar(30),
 category_id int,
 duration time,
 creator_id int,
 create_date date
 );
 
 create table examquestion (
 exam_id int,
 question_id int
 );
 
 
 
 
 
 
 
 
 