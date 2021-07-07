use luyen_tap;
-- \\\\\\ SQL – Assignment 6 \\\\\\\ --

-- Exercise 1: Tiếp tục với Database Testing System

-- Question 1: Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả 
-- các thuộc phòng ban đó

SELECT * from Account;
SELECT * from department;


DROP PROCEDURE IF EXISTS enter_department_name;
DELIMITER $$
CREATE PROCEDURE enter_department_name (
IN in_DepartmentName VARCHAR(50) )
BEGIN
		SELECT  A.DepartmentName, B.*
		from Department as A
		join Account as B
		ON A.DepartmentID = B.DepartmentID 
        where   A.DepartmentName = in_DepartmentName;
END$$
DELIMITER ;

CALL enter_department_name ('Accounting department') ;

-- Question 2: Tạo store để in ra số lượng account trong mỗi group

select * from account;
SELECT * FROM GroupAccount;
SELECT * from `group`;

DROP PROCEDURE IF EXISTS number_of_accounts;
DELIMITER $$
CREATE PROCEDURE number_of_accounts (
IN in_GroupName VARCHAR (50))
BEGIN 

		SELECT A.GroupName, count(B.AccountID) AS SL , group_concat(C.FullName) as THANH_VIEN
        FROM GroupAccount B
		JOIN `group` A
        ON B.GroupID = A.GroupID
        join `Account` C 
        ON B.AccountID = C.AccountID
		WHERE A.GroupName = in_GroupName ;

END$$
DELIMITER ;
CALL number_of_accounts ('Group4');

-- Question 3: Tạo store để thống kê mỗi type question có bao nhiêu question được tạo
-- trong tháng hiện tại
 select * from typequestion;
 select * from question;
 
 DROP PROCEDURE IF EXISTS thống_kê;
DELIMITER $$
CREATE PROCEDURE thống_kê ( IN in_TypeName VARCHAR(50))
BEGIN
		SELECT A.TypeName, count(B.TypeID) as SL
		FROM typequestion as A
		JOIN question as B
		ON A.TypeID = B.TypeID
        WHERE A.TypeName = in_TypeName
		GROUP BY B.TypeID 
		;
END$$
DELIMITER ;

call thống_kê ('Essay');
call thống_kê ('Multiple-Choice');

-- Question 4: Tạo store để trả ra id của type question có nhiều câu hỏi nhất

select * from question;
select * from typequestion;

DROP PROCEDURE IF EXISTS TypeID ;
DELIMITER $$
CREATE PROCEDURE TypeID
(OUT out_TypeID TINYINT UNSIGNED)
BEGIN

		SELECT B.TypeID INTO out_TypeID
		FROM question as A
		JOIN typequestion as B
		ON A.TypeID = B.TypeID
		GROUP BY A.TypeID 
		HAVING count(A.TypeID) =
		 (SELECT max(countID) as max_id FROM 
		 (SELECT count(A.TypeID) as countID FROM question as A 
		 GROUP BY A.TypeID ) as count_id );
	
 
 END$$
 DELIMITER ;
 SET @Type_ID = '';
 CALL TypeID (@Type_ID);
 SELECT @Type_ID;

-- Question 5: Sử dụng store ở question 4 để tìm ra tên của type question
SELECT TypeName FROM typequestion
Where TypeID = @Type_ID;


-- Question 6: Viết 1 store cho phép người dùng nhập vào 1 chuỗi và trả về group có tên
-- chứa chuỗi của người dùng nhập vào hoặc trả về user có username chứa
-- chuỗi của người dùng nhập vào
select * from account;
select * from `group` ;
 DROP PROCEDURE IF EXISTS Store;
DELIMITER $$
CREATE PROCEDURE Store (IN in_chuoi VARCHAR(50))
BEGIN 
		SELECT B.Username as infor FROM `account` B WHERE B.Username LIKE
		CONCAT("%",in_chuoi,"%")
		UNION
		SELECT A.GroupName as infor FROM `group` A WHERE A.GroupName LIKE
		CONCAT("%",in_chuoi,"%");
END$$
DELIMITER ;
call Store('g');


-- Question 8: Viết 1 store cho phép người dùng nhập vào Essay hoặc Multiple-Choice
 -- để thống kê câu hỏi essay hoặc multiple-choice nào có content dài nhất
 
 SELECT * from typequestion;
 select * from question;

DROP PROCEDURE IF EXISTS store1;
DELIMITER $$
CREATE PROCEDURE store1 (IN in_TypeName ENUM('Essay','Multiple-Choice'))
BEGIN 
SELECT b.Content
FROM question as b
JOIN typequestion as a
ON a.TypeID = b.TypeID
WHERE in_TypeName = b.Content;


END$$
DELIMITER ;

call store1('Multiple-Choice');

-- Question 9: Viết 1 store cho phép người dùng xóa exam dựa vào ID
select * from exam;
select * from examquestion;

DROP PROCEDURE IF EXISTS DELETE_Exam;
DELIMITER $$
CREATE PROCEDURE DELETE_Exam (IN in_ExamID TINYINT UNSIGNED)
BEGIN 
DELETE FROM examquestion Where in_ExamID = ExamID;
DELETE FROM exam WHERE ExamID = in_ExamID;
END$$
DELIMITER ;

call DELETE_Exam('1');

CALL DELETE_Exam(7);

-- Question 10: Tìm ra các exam được tạo từ 3 năm trước và xóa các exam đó đi (sử
-- dụng store ở câu 9 để xóa)
-- Sau đó in số lượng record đã remove từ các table liên quan trong khi
-- removing

-- Question 11: Viết store cho phép người dùng xóa phòng ban bằng cách người dùng
-- nhập vào tên phòng ban và các account thuộc phòng ban đó sẽ được
-- chuyển về phòng ban default là phòng ban chờ việc

select * from account;
select * from department;

DROP PROCEDURE IF EXISTS Delete_DeP;
DELIMITER $$
CREATE PROCEDURE Delete_DeP ( IN in_department_name varchar(50))
BEGIN
DELETE FROM department as B where in_department_name = B.DepartmentName;
UPDATE account as A
SET A.DepartmentID = '-1'
WHERE in_department_name = A.DepartmentID;
END$$
DELIMITER ;
call Delete_DeP('Sale');


























