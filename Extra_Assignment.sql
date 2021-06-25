DROP DATABASE IF EXISTS Assignment_2;
CREATE DATABASE Assignment_2;
USE Assignment_2;

CREATE TABLE Fresher_Training_Management (
Trainee_id 			INT AUTO_INCREMENT PRIMARY KEY,
full_name 			VARCHAR(100),
Birth_Date 			DATE,
Gender				ENUM('male', 'female', 'unknow'),
ET_IQ				TINYINT UNSIGNED, CHECK (ET_IQ<=20),
ET_Gmath			TINYINT UNSIGNED, CHECK (ET_Gmath<=20),
ET_English			TINYINT UNSIGNED, CHECK (ET_English<=50),
Training_class		TINYINT UNSIGNED,
Evaluation_Notes	TEXT
);

ALTER TABLE Fresher_Training_Management ADD VTI_Account VARCHAR(50) NOT NULL UNIQUE KEY;
