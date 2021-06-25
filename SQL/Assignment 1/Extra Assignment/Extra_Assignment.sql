DROP DATABASE IF EXISTS Assignment_2;
CREATE DATABASE Assignment_2;
USE Assignment_2;

CREATE TABLE Fresher_Training_Management (
Trainee_id 			TINYINT UNSIGNED PRIMARY KEY,
full_name 			VARCHAR(20),
Birth_Date 			DATE,
Gender				ENUM('male', 'female', 'unknow'),
ET_IQ				TINYINT UNSIGNED,
ET_Gmath			TINYINT UNSIGNED,
ET_English			TINYINT UNSIGNED,
Training_class		TINYINT UNSIGNED,
Evaluation_Notes	TEXT,
VTI_account			VARCHAR(100) NOT NULL UNIQUE KEY
);

CREATE TABLE Excercise_2 (
ID					TINYINT PRIMARY KEY,
`Name`				VARCHAR(100),
`Code`				CHAR(5),
ModifiedDate		DATETIME
);

CREATE TABLE Excercise_3 (
ID					TINYINT UNSIGNED PRIMARY KEY,
`Name`				VARCHAR(100),
Birth_Date			DATE,
Gender				ENUM('0', '1', 'NULL'),
IsDeletedFlag		ENUM('0', '1')
);

 