drop database if EXISTS luyen_tap;
create database luyen_tap;
use luyen_tap;

create table Department (
DepartmentID		 tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
DepartmentName		 varchar(50) UNIQUE KEY NOT NULL
);

create table Position (
PositionID	   		tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
PositionName		 ENUM('Dev', 'Test', 'Scrum Master', 'PM') UNIQUE KEY NOT NULL
);

CREATE TABLE `Account` (
AccountID			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Email 				VARCHAR(100) NOT NULL,
Username 			VARCHAR(50) UNIQUE KEY NOT NULL,
FullName			VARCHAR(50) UNIQUE KEY NOT NULL,
DepartmentID 		TINYINT UNSIGNED NOT NULL,
PositionID 		ENUM('Dev', 'Test', 'Scrum Master', 'PM') NOT NULL,
CreateDate 		DATE DEFAULT ('now'),
FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID),
FOREIGN KEY (PositionID) REFERENCES Position (PositionID)
);

create table `Group` (
GroupID 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
GroupName			varchar(50) NOT NULL,
CreatorID 			tinyint unsigned UNIQUE KEY NOT NULL,
CreateDate			date DEFAULT ('now'),
FOREIGN KEY (CreatorID) REFERENCES `Account` (AccountID)
);

create table GroupAccount (
 GroupID 			tinyint unsigned NOT NULL,
 AccountID 			tinyint unsigned NOT NULL,
 JoinDate 			date DEFAULT ('now'),
 FOREIGN KEY (GroupID) REFERENCES `Group` (GroupID),
  FOREIGN KEY (AccountID) REFERENCES `Account` (AccountID)
 );
 
 CREATE TABLE TypeQuestion (
    TypeID TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    TypeName ENUM('Essay', 'Multiple-Choice') NOT NULL
);
  
 
 create table CategoryQuestion (
 CategoryID 		tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 CategoryName 		varchar(100) NOT NULL
 );
 
 create table Question (
 QuestionID 		tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 Content			varchar(100) NOT NULL,
 CategoryID 		tinyint unsigned NOT NULL,
 TypeID			   tinyint unsigned NOT NULL,
 CreatorID		   tinyint unsigned UNIQUE KEY NOT NULL,
 CreateDate 		date DEFAULT ('now'),
   FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID),
      FOREIGN KEY (TypeID) REFERENCES TypeQuestion (TypeID)
   );
 
 create table Answer (
 AnswerID 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 Content			varchar(100) NOT NULL,
 QuestionID 		tinyint unsigned NOT NULL,
 isCorrect 			ENUM('T', 'F') NOT NULL,
  FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
 );
 
 create table Exam (
 ExamID 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 `Code` 			varchar(10) NOT NULL,
 Title 				varchar(50) NOT NULL,
 CategoryID 		tinyint unsigned NOT NULL,
 Duration 			time NOT NULL,
 CreatorID 		    tinyint unsigned UNIQUE KEY NOT NULL,
 CreateDate 		date DEFAULT ('now'),
   FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion (CategoryID)
 );
 
 create table ExamQuestion (
 ExamID 			tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
 QuestionID 		tinyint unsigned UNIQUE KEY NOT NULL,
   FOREIGN KEY (ExamID) REFERENCES Exam(ExamID),
     FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
 );
 
 -- TH??M D??? LI???U V??O B???NG --
 
 
  -- table department --
INSERT INTO Department  ( DepartmentName)
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
INSERT INTO Position    (PositionName)
 VALUE 				    ('Dev'),
						('Test'), 
						('Scrum Master'), 
						('PM');
 
 -- table Accounts --
 INSERT INTO `Account`	(Email				  ,  Username   ,		 FullName			,  DepartmentID		, 	PositionID	,  	  CreateDate)
 VALUE					('account1@gmail.com' ,	'Vinhvu'    ,		'D?? ?????c Vino'		,	'2'					,	'1'			,	'2020-03-05'),
						('account2@gmail.com' , 'Cuongle'   , 		'L?? ?????c C?????ng'		,	'4'					,	'3'			,	'2020-03-06'),
						('account3@gmail.com' , 'Minhtran'  ,		'Tr???n Nh???t Minh'	,	'3'					,	'4'			,	'2020-03-07'),
						('account4@gmail.com' , 'Quoctran'  ,		'Tr???n Anh Qu???c' 	,	'5'					,	'2'			,	'2020-03-05'),
						('account5@gmail.com' , 'Khanhle'   ,		'L?? Nam Kh??nh'  	,	'10'				,	'1'			,	'2020-03-07'),
						('account6@gmail.com' , 'Minhle'    ,		'L?? ?????c Minh'   	,	'3'					,	'4'			,	'2020-03-05'),
						('account7@gmail.com' , 'Thanhpham' ,		'Ph???m V??n Thanh'	,	'3'					,	'4'			,	'2020-03-06'),
						('account8@gmail.com' , 'Locnguyen' ,		'Nguy???n Th??nh L???c'	,	'5'					,	'1'			,	'2020-03-08'), 
						('account9@gmail.com' , 'Quangphuoc',		'Ph?????c Tr???n Quang' 	, 	'5'					,	'2'			,	'2020-03-05'),
						('account10@gmail.com', 'Thanhdo'   ,		'????? Th??? Thanh'		,	'2'					,	'3'			,	'2020-03-09');
                        
   -- table `Groups`-- 
   INSERT INTO `Group` (GroupName		,	CreatorID	, CreateDate )
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
   
INSERT INTO GroupAccount  	(GroupID	,AccountID	,	JoinDate )
VALUE						('1'		,'1'		,'2020-03-17'),
							('1'		,'1'		,'2020-03-17'),
							('2'		,'1'		,'2020-03-18'),
							('3'		,'1'		,'2020-03-18'),
							('4'		,'5'		,'2020-03-20'),
							('5'		,'6'		,'2020-03-20'),
							('6'		,'7'		,'2020-03-18'),
							('7'		,'5'		,'2020-03-18'),
							('6'		,'6'		,'2020-03-19'),
							('9'		,'7'		,'2020-03-19');
                            
  -- table typequestion --
  INSERT INTO TypeQuestion (TypeName)
  VALUE 					('Essay'),
							('Multiple-Choice');
							
                            
  -- table categoryquestion --   
  INSERT INTO CategoryQuestion  (CategoryName)
    VALUE 						('Java'),
								('SQL'),
								('Postman'),
								('Ruby'),
								('C++');
    
    -- table question--   
INSERT INTO  Question 	(Content	,CategoryID,TypeID,CreatorID,  CreateDate)
VALUE 					('question1','1'		,'1'	,'2'		,'2020-03-20'),
						('question2','3'		,'2'	,'4'		,'2020-03-20'),
						('question3','5'		,'1'	,'6'		,'2020-03-20'),
						('question4','2'		,'2'	,'8'		,'2020-03-20'),
						('question5','4'		,'2'	,'10'		,'2020-03-20'),
						('question6','2'		,'1'	,'1'		,'2020-03-20'),
						('question7','4'		,'2'	,'3'		,'2020-03-20'),
						('question8','5'		,'1'	,'5'		,'2020-03-20'),
						('question9','3'		,'1'	,'7'		,'2020-03-20'),
						('question10','1'		,'2'	,'9'		,'2020-03-20');
    
    -- table answer --   
  INSERT INTO  Answer			(Content	,	QuestionID	,isCorrect)
    VALUE 			 			('Answer1'	,'2'			,'T'	  ),
								('Answer2'	,'4'			,'F'	  ),
								('Answer3'	,'6'			,'T'      ),
								('Answer4'	,'8'			,'F'      ),
								('Answer5'	,'2'			,'T'      ),
								('Answer6'	,'4'			,'F'      ),
								('Answer7'	,'6'			,'T'      ),
								('Answer8'	,'2'			,'F'	  ),
								('Answer9'	,'4'			,'T'	  ),
								('Answer10'	,'2'			,'F'	  );
    
    -- table exam--   
  INSERT INTO Exam		(`Code`		,	Title			,CategoryID	,Duration	,CreatorID	, CreateDate)
    VALUE 				('VTI001'	,	'C++_test'			,'1'				,'1:00:00'	,'2'		,'2010-03-25'),
						('VTI002'	,	'Java_test'			,'3'				,'1:00:00'	,'4'		,'2020-03-25'),
						('VTI003'	,	'C++_test'			,'5'				,'1:00:00'	,'6'		,'2010-03-25'),
						('VTI004'	,	'SQL_test'			,'4'				,'2:00:00'	,'8'		,'2020-03-24'),
						('VTI005'	,	'Ruby_test'			,'5'				,'1:30:00'	,'10'		,'2018-03-26'),
						('VTI006'	,	'Java_test'			,'3'				,'1:00:00'	,'3'		,'2020-03-26'),
						('VTI007'	,	'Postman,_test'		,'1'				,'1:30:00'	,'5'		,'2020-03-23'),
						('VTI008'	,	'SQL_test'			,'1'				,'2:00:00'	,'7'		,'2020-03-24'),
						('VTI009'	,	'Ruby_test'			,'3'				,'1:30:00'	,'1'		,'2018-03-26'),
						('VTI010'	,	'Postman_test'		,'3'				,'1:30:00'	,'9'		,'2020-03-23');
    
    -- table exam --   
  INSERT INTO ExamQuestion  (QuestionID)
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
                            
     -- Question 2: l???y ra t???t c??? c??c ph??ng ban
     SELECT * FROM Department;
     
     -- Question 3: l???y ra id c???a ph??ng ban "Sale" 
     SELECT DepartmentID FROM Department 
     WHERE DepartmentName = 'Sale';
     
     -- Question 4: l???y ra th??ng tin account c?? full name d??i nh???t
SELECT * FROM `Account` 
WHERE length(FullName) = (SELECT max(length(FullName)) FROM `Account`)
ORDER BY FullName DESC;

-- Question 5: L???y ra th??ng tin account c?? full name d??i nh???t v?? thu???c ph??ng ban c?? id= 9
SELECT * FROM `Account` 
WHERE length(FullName) = (SELECT max(length(FullName)) FROM `Account`) and AccountID = 9
ORDER BY FullName DESC;

-- Question 6: L???y ra t??n group ???? tham gia tr?????c ng??y 20/12/2019
SELECT GroupName FROM `Group`
WHERE CreateDate < '2020-03-11';

-- Question 7: L???y ra ID c???a question c?? >= 4 c??u tr??? l???i
SELECT * FROM Answer
GROUP BY QuestionID 
HAVING count(QuestionID) >= 4;

-- Question 8: L???y ra c??c m?? ????? thi c?? th???i gian thi >= 60 ph??t v?? ???????c t???o tr?????c ng??y 20/12/2019
SELECT `Code` FROM Exam
WHERE Duration >= '1:00:00' and CreateDate < '2020-03-24';

-- Question 9: L???y ra 5 group ???????c t???o g???n ????y nh???t
SELECT GroupName,CreateDate FROM `Group`
ORDER BY CreateDate DESC
LIMIT 5;

-- Question 10: ?????m s??? nh??n vi??n thu???c department c?? id = 3
SELECT * FROM `Account`;

SELECT count(1) as total,group_concat(FullName) as `name` FROM `Account`
WHERE DepartmentID = 3;

-- Question 11: L???y ra nh??n vi??n c?? t??n b???t ?????u b???ng ch??? "D" v?? k???t th??c b???ng ch??? "o"
SELECT * FROM `Account` ;

SELECT * FROM `Account`
WHERE FullName LIKE 'D%o';

-- Question 12: X??a t???t c??? c??c exam ???????c t???o tr?????c ng??y 20/12/2019
SELECT * FROM Exam ORDER BY CreateDate ASC;
DELETE FROM Exam WHERE CreateDate > '2020-03-25';

-- Question 13: X??a t???t c??? c??c question c?? n???i dung b???t ?????u b???ng t??? "c??u h???i"
SELECT * FROM Question;

DELETE FROM Question WHERE Content LIKE 'cauhoi%';

-- Question 14: Update th??ng tin c???a account c?? id = 5 th??nh t??n "Nguy???n B?? L???c" v?? email th??nh loc.nguyenba@vti.com.vn
 SELECT * FROM `Account`;
 
 UPDATE `Account`
 SET FullName = 'Nguy???n B?? L???c',
	 Email	  = 'loc.nguyenba@vti.com.vn'
 WHERE  AccountID = 5;   
 
 -- Question 15: update account c?? id = 5 s??? thu???c group c?? id = 4
 SELECT * FROM GroupAccount;
 
UPDATE GroupAccount 
SET AccountID = 5 
WHERE GroupID = 4;


-- ////////////// join ////////////////// --
-- Question 1: Vi???t l???nh ????? l???y ra danh s??ch nh??n vi??n v?? th??ng tin ph??ng ban c???a h???
SELECT * FROM Department;
SELECT * FROM `Account`;

SELECT A.FullName, A.Email, A.Username, B.DepartmentName
FROM `Account` as A
LEFT JOIN Department as B
ON A.DepartmentID = B.DepartmentID;

-- Question 2: Vi???t l???nh ????? l???y ra th??ng tin c??c account ???????c t???o sau ng??y 20/12/2010
SELECT * FROM `Account`;

SELECT * FROM `Account` 
WHERE CreateDate > '2020-03-07';

-- Question 3: Vi???t l???nh ????? l???y ra t???t c??? c??c developer
  SELECT * from Position;
    SELECT * FROM `Account`;
    
    SELECT A.*, B.PositionName
    FROM `Account` as A
    LEFT JOIN Position as B
    ON A.PositionID = B.PositionID
    WHERE PositionName = 'Dev';
    
    -- Question 4: Vi???t l???nh ????? l???y ra danh s??ch c??c ph??ng ban c?? >2 nh??n vi??n
    SELECT * FROM Department;
    SELECT * FROM `Account`;
    
    SELECT A.DepartmentName, count(B.DepartmentID) as 'so nhan vien', group_concat(B.FullName)
    FROM Department as A
    JOIN `Account` as B
    ON A.DepartmentID = B. DepartmentID
    GROUP BY B.DepartmentID HAVING count(B.DepartmentID) > 1;
    
    -- Question 6: Th??ng k?? m???i category Question ???????c s??? d???ng trong bao nhi??u Question
    SELECT * from CategoryQuestion;
    select * from Question;
   
   SELECT A.CategoryName, count(B.CategoryID) as 'so cau hoi'
   FROM CategoryQuestion as A
   JOIN Question as B
   ON A.CategoryID = B.CategoryID
   GROUP BY B.CategoryID;
   
-- Question 7: Th??ng k?? m???i Question ???????c s??? d???ng trong bao nhi??u Exam

SELECT * from Question;
SELECT * from  ExamQuestion;
 SELECT A.Content, count(B.QuestionID) as 'so Exam'
   FROM Question as A
   LEFT JOIN ExamQuestion as B
   ON A.QuestionID = B.QuestionID
   GROUP BY A.QuestionID
   ORDER BY B.QuestionID ASC;

   
   -- Question 8: L???y ra Question c?? nhi???u c??u tr??? l???i nh???t
   
   
   -- Question 9: Th???ng k?? s??? l?????ng account trong m???i group
   SELECT * from `Account`;
    SELECT * from `Group`;
   
   SELECT A.GroupName, count(A.CreatorID) as 's??? l?????ng account' , group_concat(B.FullName) as 'fullname'
   FROM `Group` as A
   LEFT JOIN `Account` as B
   ON B.AccountID = A.CreatorID
   GROUP BY GroupName;
   
   -- Question 10: T??m ch???c v??? c?? ??t ng?????i nh???t
    
    SELECT * FROM Position;
    SELECT * FROM `Account`;
    
    SELECT A.PositionName, count(B.PositionID) as 'so nguoi'
    FROM Position as A
    JOIN `Account` as B
    ON A.PositionID = B.PositionID
 GROUP BY B.PositionID HAVING count(B.PositionID);
 
 -- Question 11: Th???ng k?? m???i ph??ng ban c?? bao nhi??u dev, test, scrum master, PM
 
 SELECT * from Department;
 SELECT * from `Account`;
 SELECT * from Position;
 
SELECT B.DepartmentID,B.DepartmentName, C.PositionName, count(C.PositionName) as SL
FROM `Account` as A
INNER JOIN Department as B
ON A.DepartmentID = B.DepartmentID
INNER JOIN Position as C
ON A.PositionID = C.PositionID
GROUP BY B.DepartmentID, C.PositionID;

-- Question 12: L???y th??ng tin chi ti???t c???a c??u h???i
SELECT * FROM Question;
SELECT * from Answer;

SELECT A.*, B.*
from Question as A
 JOIN
 Answer as B
ON A.QuestionID = B.QuestionID;

-- Question 13: L???y ra s??? l?????ng c??u h???i c???a m???i lo???i t??? lu???n hay tr???c nghi???m
SELECT * from TypeQuestion;
SELECT * from Question;

select  A.TypeName, count(B.TypeID) as SL 
from  TypeQuestion as A JOIN  Question as B
ON A.TypeID = B.TypeID
GROUP BY B.TypeID;

-- Question 14+15:L???y ra group kh??ng c?? account n??o
SELECT * from `Group`;
SELECT * from GroupAccount;

SELECT A.GroupName, A.GroupID, B.AccountID
from `Group` as A 
left join GroupAccount as B
ON A.GroupID = B.GroupID
WHERE AccountID IS NULL;

-- Question 16: L???y ra question kh??ng c?? answer n??o
SELECT * from Question;
SELECT * from Answer;

SELECT A.Content, A.QuestionID, B.Content
from Question as A 
left join Answer as B
ON A.QuestionID = B.QuestionID
WHERE B.Content IS NULL;

-- \\\\\\\\\\\\\\ UNION \\\\\\\\\\\\\\\\ --

-- Question 17:
 SELECT * FROM GroupAccount;
    SELECT * FROM `Account`;
    
SELECT A.Email, A.FullName, A.PositionID, A.AccountID ,B.GroupID
FROM `Account` AS A
join GroupAccount as B
on A.AccountID = B.AccountID
WHERE B.GroupID = 1

UNION 

SELECT A.Email, A.FullName, A.PositionID, A.AccountID ,B.GroupID
FROM `Account` AS A
join GroupAccount as B
on A.AccountID = B.AccountID
WHERE B.GroupID = 2;

 -- Question 18:
 
 SELECT * from `Group`;
 SELECT * from GroupAccount;

 
 SELECT A.GroupName, count(A.GroupID) as 'so luong', B.AccountID
 from `Group` as A
 join GroupAccount as B
 ON A.GroupID = B.GroupID
 GROUP BY A.GroupName HAVING count(A.GroupName) > 5 
 union
  SELECT A.GroupName, count(A.GroupID) as 'so luong', B.AccountID
 from `Group` as A
 join GroupAccount as B
 ON A.GroupID = B.GroupID
 GROUP BY A.GroupName HAVING count(A.GroupName) < 7 ;
 

    


 








   