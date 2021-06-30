drop database if EXISTS Testing_System_Assignment2;
create database Testing_System_Assignment2;
use Testing_System_Assignment2;

create table department (
department_id		 tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
department_name		 varchar(50) UNIQUE KEY NOT NULL
);

create table position (
position_id			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
position_name		 ENUM('Dev', 'Test', 'Scrum Master', 'PM') UNIQUE KEY NOT NULL
);

CREATE TABLE Accounts (
account_id 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
email 				VARCHAR(100) NOT NULL,
username 			VARCHAR(50) UNIQUE KEY NOT NULL,
FullName			VARCHAR(50) UNIQUE KEY NOT NULL,
department_id 		TINYINT UNSIGNED UNIQUE KEY NOT NULL,
position_id 		ENUM('Dev', 'Test', 'Scrum Master', 'PM') NOT NULL,
create_date 		DATE DEFAULT ('now'),
FOREIGN KEY (department_id) REFERENCES department (department_id),
FOREIGN KEY (position_id) REFERENCES position (position_id)
);

create table `Groups` (
group_id 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
group_name			varchar(50) NOT NULL,
creator_id 			tinyint unsigned UNIQUE KEY NOT NULL,
create_date			date DEFAULT ('now'),
FOREIGN KEY (creator_id) REFERENCES Accounts (account_id)
);

create table GroupAccount (
 group_id 			tinyint unsigned NOT NULL,
 account_id 		tinyint unsigned NOT NULL,
 join_date 			date DEFAULT ('now'),
 FOREIGN KEY (group_id) REFERENCES `Groups` (group_id),
  FOREIGN KEY (account_id) REFERENCES Accounts (account_id)
 );
 
 CREATE TABLE typequestion (
    type_id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    type_name ENUM('Essay', 'Multiple-Choice') NOT NULL
);
  
 
 create table categoryquestion (
 category_id 		tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 category_name 		varchar(100) NOT NULL
 );
 
 create table question (
 question_id 		tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 content 			varchar(100) NOT NULL,
 category_id 		tinyint unsigned UNIQUE KEY NOT NULL,
 type_id 			tinyint unsigned NOT NULL,
 creator_id 		tinyint unsigned UNIQUE KEY NOT NULL,
 create_date 		date DEFAULT ('now'),
   FOREIGN KEY (category_id) REFERENCES categoryquestion (category_id),
      FOREIGN KEY (type_id) REFERENCES typequestion (type_id)
   );
 
 create table answer (
 answer_id 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 content 			varchar(100) NOT NULL,
 question_id 		tinyint unsigned UNIQUE KEY NOT NULL,
 iscorrect 			ENUM('T', 'F') NOT NULL,
  FOREIGN KEY (question_id) REFERENCES question(question_id)
 );
 
 create table Exam (
 exam_id 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 `Code` 			varchar(10) NOT NULL,
 title 				varchar(50) NOT NULL,
 category_id 		tinyint unsigned UNIQUE KEY NOT NULL,
 duration 			time NOT NULL,
 creator_id 		tinyint unsigned UNIQUE KEY NOT NULL,
 create_date 		date DEFAULT ('now'),
   FOREIGN KEY (category_id) REFERENCES categoryquestion (category_id)
 );
 
 create table examquestion (
 exam_id 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 question_id 		tinyint unsigned UNIQUE KEY NOT NULL,
   FOREIGN KEY (exam_id) REFERENCES Exam(exam_id),
     FOREIGN KEY (question_id) REFERENCES question(question_id)
 );
 
 -- THÊM DỮ LIỆU VÀO BẢNG --
 
 
  -- table department --
INSERT INTO department  ( department_name)
VALUE					('Maketing'),
						('Sale'),
                        ('Security'),
                        ('Accounting department'),
                        ('Administration department'),
                        ('Human Resources department'),
                        ('Customer Service departmen'),
                        ('Research & Development department'),
                        ('Chairman'),
                        ('Quality department:');
                        
-- table position --
INSERT INTO position    (position_name)
 VALUE 				    ('Dev'),
						('Test'), 
						('Scrum Master'), 
						('PM');
 
 -- table Accounts --
 INSERT INTO Accounts	(email				  ,  username   ,		 FullName			,  department_id		, 	position_id	,  	  create_date)
 VALUE					('account1@gmail.com' ,	'Vinhvu'    ,		'Dũ Đức Vino'		,	'2'					,	'1'			,	'2020-03-05'),
						('account2@gmail.com' , 'Cuongle'   , 		'Lê Đức Cường'		,	'4'					,	'3'			,	'2020-03-06'),
						('account3@gmail.com' , 'Minhtran'  ,		'Trần Nhật Minh'	,	'6'					,	'4'			,	'2020-03-07'),
						('account4@gmail.com' , 'Quoctran'  ,		'Trần Anh Quốc' 	,	'8'					,	'2'			,	'2020-03-05'),
						('account5@gmail.com' , 'Khanhle'   ,		'Lê Nam Khánh'  	,	'10'				,	'1'			,	'2020-03-07'),
						('account6@gmail.com' , 'Minhle'    ,		'Lê Đức Minh'   	,	'1'					,	'4'			,	'2020-03-05'),
						('account7@gmail.com' , 'Thanhpham' ,		'Phạm Văn Thanh'	,	'3'					,	'4'			,	'2020-03-06'),
						('account8@gmail.com' , 'Locnguyen' ,		'Nguyễn Thành Lộc'	,	'5'					,	'1'			,	'2020-03-08'), 
						('account9@gmail.com' , 'Quangphuoc',		'Phước Trần Quang' 	, 	'7'					,	'2'			,	'2020-03-05'),
						('account10@gmail.com', 'Thanhdo'   ,		'Đỗ Thị Thanh'		,	'9'					,'	3'			,	'2020-03-09');
                        
   -- table `Groups`-- 
   INSERT INTO `Groups` (group_name		,	creator_id	, create_date)
   VALUE 				('Group1'		,	'1'			,'2020-03-10'),
						('Group2'		,	'3'			,'2020-03-11'),             
						('Group3'		,	'5'			,'2010-03-12'),
						('Group4'		,	'7'			,'2020-03-13'),
						('Group1'		,	'9'			,'2020-03-10'),
						('Group2'		,	'2'			,'2020-03-11'),
						('Group3'		,	'4'			,'2010-03-12'),             
						('Group3'		,	'6'			,'2010-03-13'),
						('Group4'		,	'8'			,'2020-03-14'),
						('Group4'		,	'10'		,'2020-03-14');
                        
   -- table GroupAccount--
   
INSERT INTO GroupAccount  	(group_id	,account_id	,	join_date)
VALUE						('1'		,'4'		,'2020-03-17'),
							('1'		,'10'		,'2020-03-17'),
							('2'		,'8'		,'2020-03-18'),
							('3'		,'1'		,'2020-03-18'),
							('4'		,'4'		,'2020-03-20'),
							('5'		,'2'		,'2020-03-20'),
							('6'		,'4'		,'2020-03-18'),
							('7'		,'5'		,'2020-03-18'),
							('6'		,'6'		,'2020-03-19'),
							('9'		,'7'		,'2020-03-19');
                            
  -- table typequestion --
  INSERT INTO typequestion (type_name)
  VALUE 					('Essay'),
							('Multiple-Choice');
							
                            
  -- table categoryquestion --   
  INSERT INTO categoryquestion  (category_name)
    VALUE 						('Java'),
								('SQL'),
								('Postman'),
								('Ruby'),
								('Java'),
								('SQL'),
								('Postman'),
								('Ruby,'),
								('C++'),
								('C++');
    
    -- table question--   
INSERT INTO  question 	(content	,category_id,type_id,creator_id,  create_date)
VALUE 					('question1','1'		,'1'	,'2'		,'2020-03-20'),
						('question2','3'		,'2'	,'4'		,'2020-03-20'),
						('question3','5'		,'1'	,'6'		,'2020-03-20'),
						('question4','7'		,'2'	,'8'		,'2020-03-20'),
						('question5','9'		,'2'	,'10'		,'2020-03-20'),
						('question6','2'		,'1'	,'1'		,'2020-03-20'),
						('question7','4'		,'2'	,'3'		,'2020-03-20'),
						('question8','6'		,'1'	,'5'		,'2020-03-20'),
						('question9','8'		,'1'	,'7'		,'2020-03-20'),
						('question10','10'		,'2'	,'9'		,'2020-03-20');
    
    -- table answer --   
  INSERT INTO  answer			(content	,	question_id	,iscorrect)
    VALUE 			 			('Answer1'	,'2'			,'T'	  ),
								('Answer2'	,'4'			,'F'	  ),
								('Answer3'	,'6'			,'T'      ),
								('Answer4'	,'8'			,'F'      ),
								('Answer5'	,'10'			,'T'      ),
								('Answer6'	,'1'			,'F'      ),
								('Answer7'	,'3'			,'T'      ),
								('Answer8'	,'5'			,'F'	  ),
								('Answer9'	,'7'			,'T'	  ),
								('Answer10'	,'9'			,'F'	  );
    
    -- table exam--   
  INSERT INTO exam		(`code`		,	title				,category_id	,duration	,creator_id	, create_date)
    VALUE 				('VTI001'	,	'C++_test'			,'1'			,'1:00:00'	,'2'		,'2010-03-25'),
						('VTI002'	,	'Java_test'			,'3'			,'1:00:00'	,'4'		,'2020-03-25'),
						('VTI003'	,	'C++_test'			,'5'			,'1:00:00'	,'6'		,'2010-03-25'),
						('VTI004'	,	'SQL_test'			,'7'			,'2:00:00'	,'8'		,'2020-03-24'),
						('VTI005'	,	'Ruby_test'			,'9'			,'1:30:00'	,'10'		,'2018-03-26'),
						('VTI006'	,	'Java_test'			,'2'			,'1:00:00'	,'3'		,'2020-03-25'),
						('VTI007'	,	'Postman,_test'		,'4'			,'1:30:00'	,'5'		,'2020-03-23'),
						('VTI008'	,	'SQL_test'			,'6'			,'2:00:00'	,'7'		,'2020-03-24'),
						('VTI009'	,	'Ruby_test'			,'8'			,'1:30:00'	,'1'		,'2018-03-26'),
						('VTI010'	,	'Postman_test'		,'10'			,'1:30:00'	,'9'		,'2020-03-23');
    
    -- table exam --   
  INSERT INTO examquestion  (question_id)
    VALUE 					('1'),
							('3'),
							('5'),
							('7'),
							('9'),
							('2'),
							('4'),
							('6'),
							('8'),
							('10');
 -- question 2: lấy ra tất cả các phòng ban --
    SELECT *
    FROM department;
    
    -- question 3: lấy ra id của phòng ban "sale" --

SELECT *
FROM department
WHERE department_name = 'Sale';

-- Question 4: lấy ra thông tin account có full name dài nhất --
SELECT *
FROM Accounts
WHERE length(FullName) = (SELECT max(length(FullName)) from Accounts)
ORDER BY FullName DESC;


-- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id = 3 --
SELECT * 
FROM Accounts
WHERE length(FullName) = (SELECT max(length(FullName)) from Accounts) and department_id = 3
ORDER BY FullName DESC; 

-- Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019 --
SELECT group_name
FROM `Groups`
WHERE create_date < '20-12-2019';

-- Question 7: Lấy ra ID của question có >= 4 câu trả lời --
SELECT question_id
FROM answer
GROUP BY  question_id 
HAVING count(question_id)>=4;

-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019 -- 
SELECT `code`
FROM exam
WHERE duration >= '01:00:00' and  create_date < '20-12-2019';

-- Question 9: Lấy ra 5 group được tạo gần đây nhất --
SELECT group_name	
FROM `Groups` 
ORDER BY group_name ASC 
LIMIT 5;

-- Question 10: Đếm số nhân viên thuộc department có id = 2 --
SELECT count(account_id) 
as 'NHAN VIEN' 
FROM Accounts
WHERE department_id =2;

-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o" --
SELECT FullName
AS 'NHAN VIEN'
FROM Accounts 
WHERE FullName like 'D%o';

 -- Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019
 DELETE FROM exam WHERE create_date < '20-12-2019';

 -- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
 
  UPDATE 	Accounts 
  set		FullName = "Nguyễn Bá Lộc",
			email = 'loc.nguyenba@vti.com.vn'
  WHERE 	account_id = 5;
  
  -- Question 15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE GroupAccount 
SET account_id = 5 
WHERE group_id = 4
  
  
 
 
 

    
    
    
    
  
 
                        
                        
                        
  
  
 
 
 
 
 
 
 
 
 