drop database if EXISTS Testing_System_Assignment2;
create database Testing_System_Assignment2;
use Testing_System_Assignment2;

create table department (
department		 tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
department_name		 varchar(20) UNIQUE KEY NOT NULL
);

create table position (
position_id			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
position_name		 ENUM('Dev', 'Test', 'Scrum Master', 'PM') UNIQUE KEY NOT NULL
);

create table Accounts (
Account_id 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
Email 				varchar(100) NOT NULL,
username 			varchar(50) UNIQUE KEY NOT NULL,
department_id 		tinyint unsigned UNIQUE KEY NOT NULL,
position_id 		ENUM('Dev', 'Test', 'Scrum Master', 'PM') NOT NULL,
create_date 		date NOT NULL,
FOREIGN KEY (department_id) REFERENCES department(department)
);

create table `Groups` (
group_id 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
group_name			varchar(50) UNIQUE KEY NOT NULL,
creator_id 			tinyint unsigned UNIQUE KEY NOT NULL,
create_date			date NOT NULL
);

create table GroupAccount (
 group_id 			tinyint unsigned PRIMARY KEY,
 accound_id 		tinyint unsigned UNIQUE KEY NOT NULL,
 join_date 			date NOT NULL,
 FOREIGN KEY (group_id) REFERENCES `Groups`(department)
 );
 
 create table typequestion (
 type_id 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 type_name 			varchar(100) NOT NULL 
 );
 
 create table categoryquestion (
 category_id 		tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 category_name 		varchar(100) UNIQUE KEY NOT NULL
 );
 
 create table question (
 question_id 		tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 content 			varchar(100) NOT NULL,
 category_id 		tinyint unsigned UNIQUE KEY NOT NULL,
 type_id 			tinyint unsigned UNIQUE KEY NOT NULL,
 creator_id 		tinyint unsigned UNIQUE KEY NOT NULL,
 create_date 		date NOT NULL
 );
 
 create table answer (
 answer_id 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 content 			varchar(50) NOT NULL,
 quesion_id 		tinyint unsigned UNIQUE KEY NOT NULL,
 iscorrect 			ENUM('T', 'F') NOT NULL,
  FOREIGN KEY (quesion_id) REFERENCES question(question_id)
 );
 
 create table Exam (
 exam_id 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 `Code` 			varchar(20) NOT NULL,
 title 				varchar(30) NOT NULL,
 category_id 		tinyint unsigned UNIQUE KEY NOT NULL,
 duration 			time NOT NULL,
 creator_id 		tinyint unsigned UNIQUE KEY NOT NULL,
 create_date 		date NOT NULL
 );
 
 create table examquestion (
 exam_id 			tinyint unsigned PRIMARY KEY,
 question_id 		tinyint unsigned UNIQUE KEY NOT NULL,
   FOREIGN KEY (exam_id) REFERENCES Exam(exam_id)
 );
 
 
 
 
 
 
 
 
 