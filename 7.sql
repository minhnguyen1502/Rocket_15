use luyen_tap;

-- xoa question ID = 6 
SELECT * FROM answer;
select * from question;
DELETE from question WHERE QuestionID = 6;
DROP TRIGGER IF EXISTS trigger_test;
DELIMITER $$
CREATE TRIGGER trigger_test
AFTER DELETE ON  question
FOR EACH ROW
BEGIN 
DELETE FROM answer
WHERE QuestionID = old.QuestionID;

END$$
DELIMITER ;













-- SQL – Assignment 7
-- Question 1: Tạo trigger không cho phép người dùng nhập vào Group có ngày tạo
-- trước 1 năm trước
SELECT * FROM `GROUP`;
DROP TRIGGER IF EXISTS trigger_1;
DELIMITER $$
CREATE TRIGGER trigger_1
BEFORE INSERT ON  `Group`
FOR EACH ROW
BEGIN 
IF NEW.CreateDate < DATE_SUB(NOW(), interval 1 year) THEN
		SIGNAL SQLSTATE '12345'
		SET MESSAGE_TEXT = 'FAIL';
END IF;
END$$
DELIMITER ;

INSERT INTO `Group` (GroupName		,	CreatorID	, CreateDate )
VALUE 				('SDF'		,	'1'			,'2018-03-10');

-- Question 2: Tạo trigger Không cho phép người dùng thêm bất kỳ user nào vào
-- department "Sale" nữa, khi thêm thì hiện ra thông báo "Department
-- "Sale" cannot add more user"

DROP TRIGGER IF EXISTS trigger_2;
DELIMITER $$
CREATE TRIGGER trigger_2
BEFORE INSERT ON  `account`
FOR EACH ROW
BEGIN 
	declare V_dep tinyint; -- khai bao bien (tim id phong sale)
	SELECT DepartmentID INTO V_dep FROM department WHERE DepartmentName = 'Sale';

	IF NEW.DepartmentID = (V_dep) THEN
			SIGNAL SQLSTATE '12345'
			SET MESSAGE_TEXT = "Department Sale cannot add more user";
END IF;
END$$
DELIMITER ;

INSERT INTO `Account`	(Email				  ,  Username   ,		 FullName			,  DepartmentID		, 	PositionID	,  	  CreateDate)
 VALUE					('account111@gmail.com' ,	'Vinhvue'    ,		'Dũ Đức Vinoe'		,	'2'					,	'1'			,	'2020-03-05');
					
-- Question 3: Cấu hình 1 group có nhiều nhất là 5 user
select * from groupaccount;
DROP TRIGGER IF EXISTS trigger_3;
DELIMITER $$
CREATE TRIGGER trigger_3
BEFORE INSERT ON  GroupAccount
FOR EACH ROW
BEGIN 
	declare v_GroupAccount varchar(100);
    select count(groupID) INTO v_GroupAccount FROM GroupAccount
    WHERE NEW.AccountID = groupID;
	IF  (v_GroupAccount>5) THEN
			SIGNAL SQLSTATE '12345'
			SET MESSAGE_TEXT = "fail";
END IF;
END$$
DELIMITER ;

INSERT INTO GroupAccount  	(GroupID	,AccountID	,	JoinDate )
VALUE						('2'		,'1'		,'2020-03-17'),
							('2'		,'2'		,'2020-03-17'),
							('2'		,'3'		,'2020-03-18'),
							('2'		,'4'		,'2020-03-18'),
							('2'		,'5'		,'2020-03-20'),
							('2'		,'6'		,'2020-03-20');
                            
                            
                            
                            
 -- Question 4: Cấu hình 1 bài thi có nhiều nhất là 10 Question
 select * from examquestion;
DROP TRIGGER IF EXISTS trigger_4;
DELIMITER $$
CREATE TRIGGER trigger_4
BEFORE INSERT ON  examquestion
FOR EACH ROW
BEGIN 
	declare v_examquestion varchar(100);
    select count(QuestionID) INTO v_examquestion FROM examquestion
    WHERE NEW.QuestionID = QuestionID ;
	IF  (v_examquestion>10) THEN
			SIGNAL SQLSTATE '12345'
			SET MESSAGE_TEXT = "fail";
END IF;
END$$
DELIMITER ;


INSERT INTO ExamQuestion  (QuestionID)
    VALUE 					('10');
							
   --   Question 8: Viết trigger sửa lại dữ liệu cho đúng:
-- Nếu người dùng nhập vào gender của account là nam, nữ, chưa xác định
-- Thì sẽ đổi lại thành M, F, U cho giống với cấu hình ở database                       

select * from account;
ALTER TABLE `account`
		ADD Gender ENUM('male','female', 'unknow');
DROP TRIGGER IF EXISTS trigger_8;
DELIMITER $$
CREATE TRIGGER trigger_8
BEFORE INSERT ON  account
FOR EACH ROW
BEGIN
		
		IF NEW.Gender = 'male' THEN
			SET NEW.Gender = 'M';
		ELSEIF NEW.Gender = 'female' THEN
			SET NEW.Gender = 'F';
		ELSEIF NEW.Gender = 'unknow' THEN
			SET NEW.Gender = 'U';
		END IF ;
		END$$
DELIMITER ;

INSERT INTO account (Gender)
VALUE ('male');

-- Question 9: Viết trigger không cho phép người dùng xóa bài thi mới tạo được 2 ngày

select * from exam;
DROP TRIGGER IF EXISTS trigger_9;
DELIMITER $$
CREATE TRIGGER trigger_9
BEFORE DELETE ON  exam
FOR EACH ROW
BEGIN
		IF (OLD.CreateDate > DATE_SUB(NOW(),INTERVAL 2 DAY)) THEN
		SIGNAL SQLSTATE '12345'
		SET MESSAGE_TEXT = 'Cant Delete This Exam!!';		
END IF ;
END$$
DELIMITER ;

-- Question 12: Lấy ra thông tin exam trong đó:
-- Duration <= 30 thì sẽ đổi thành giá trị "Short time"
-- 30 < Duration <= 60 thì sẽ đổi thành giá trị "Medium time"
-- Duration > 60 thì sẽ đổi thành giá trị "Long time"

select * from Exam;

SELECT ExamID, Code, Title,  
		CASE 
		WHEN Duration <= '00:30:00' THEN "Short time"
		WHEN  Duration <= '01:00:00' AND Duration > '00:30:00' THEN "Medium time"
		ELSE "Long time"
		END as Duration
from exam ;

-- Question 13: Thống kê số account trong mỗi group và in ra thêm 1 column nữa có tên
-- là the_number_user_amount và mang giá trị được quy định như sau:
-- Nếu số lượng user trong group =< 5 thì sẽ có giá trị là few
-- Nếu số lượng user trong group <= 20 và > 5 thì sẽ có giá trị là normal
-- Nếu số lượng user trong group > 20 thì sẽ có giá trị là higher

SELECT * FROM groupaccount;

SELECT GroupID ,count(AccountID), 
CASE
WHEN count(AccountID) <= 5 THEN 'few'
WHEN count(AccountID) <= 20 AND count(AccountID) > 5  THEN 'normal'
ELSE 'higher'
END as the_number_user_amount
from groupaccount
GROUP BY AccountID;

-- Question 14: Thống kê số mỗi phòng ban có bao nhiêu user, nếu phòng ban nào
-- không có user thì sẽ thay đổi giá trị 0 thành "Không có User"

select * from account;
select * from department;

SELECT A.DepartmentName,
CASE 
WHEN count(B.DepartmentID) = 0 THEN "Không có User"
ELSE count(B.DepartmentID)
END as SL
From department as A 
left join account as B
ON A.DepartmentID = B.DepartmentID
group by A.DepartmentID;

































