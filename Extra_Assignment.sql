DROP DATABASE IF EXISTS Assignment_2;
CREATE DATABASE Assignment_2;
USE Assignment_2;

CREATE TABLE Fresher_Training_Management (
Trainee_id 			INT AUTO_INCREMENT PRIMARY KEY,
full_name 			VARCHAR(100) NOT NULL,
Birth_Date 			DATE,
Gender				ENUM('male', 'female', 'unknow') ,
ET_IQ				TINYINT UNSIGNED NOT NULL, CHECK (ET_IQ<=20),
ET_Gmath			TINYINT UNSIGNED NOT NULL, CHECK (ET_Gmath<=20),
ET_English			TINYINT UNSIGNED NOT NULL, CHECK (ET_English<=50),
Training_class		TINYINT UNSIGNED NOT NULL,
Evaluation_Notes	TEXT
);

ALTER TABLE Fresher_Training_Management ADD VTI_Account VARCHAR(50) NOT NULL UNIQUE KEY;

CREATE TABLE Excercise_2 (
ID					MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
`Name`				VARCHAR(100),
`Code`				VARCHAR(5),
ModifiedDate		DATETIME
);

CREATE TABLE Excercise_3 (
ID					MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`Name`				VARCHAR(100),
Birth_Date			DATE,
Gender				ENUM('0', '1', 'NULL'),
IsDeletedFlag		ENUM('0', '1')
);