CREATE DATABASE RiverPlate1
--
CREATE TABLE Student
(
	StudentNo INT
	CONSTRAINT PK_Student_StudentNo PRIMARY KEY,
	StudentName VARCHAR(50),
	StudentAddress VARCHAR(100),
	PhoneNo	int
)
CREATE TABLE Department
(
	DeptNo int
	CONSTRAINT PK_Department_DeptNo PRIMARY KEY,
	DeptName	VARCHAR(50) ,
	ManagerName char(30)
)
CREATE TABLE Assignment
(
	AssignmentNo	INT
	CONSTRAINT PK_Assignment_AssignmentNo PRIMARY KEY,
	Description	varchar(100) 
)
CREATE TABLE Works_Assign
(
	JobID INT
	CONSTRAINT PK_Works_Assign_JobID PRIMARY KEY,
	StudentNo	INT,
	AssignmentNo	INT,
	TotalHours	INT,
	JobDetails	XML
	CONSTRAINT FK_Student_Works_Assign FOREIGN KEY (StudentNo) REFERENCES Student(StudentNo),
	CONSTRAINT FK_Assignment_Works_Assign FOREIGN KEY (AssignmentNo) REFERENCES Assignment(AssignmentNo)
)
--
	INSERT INTO Student VALUES(001,'Ronaldo','Porgutal','0355226')
	INSERT INTO Student VALUES(002,'Messi','Arghentina','03452562')
	INSERT INTO Student VALUES(003,'Rooney','England','0973723')
	INSERT INTO Student VALUES(004,'Neymar','Brazil','0753554')
	INSERT INTO Student VALUES(005,'Ballack','France','0627364')
	INSERT INTO Student VALUES(006,'deassyly','France','0372683')
	INSERT INTO Student VALUES(007,'Gulit','Holand','08328932')
	INSERT INTO Student VALUES(008,'Kante','France','0285932')
	INSERT INTO Student VALUES(009,'Coutour','Belgium','028492')
--
	INSERT INTO Department VALUES(111,'Uefa','Jose')
	INSERT INTO Department VALUES(112,'Euro','haland')
	INSERT INTO Department VALUES(113,'Juventus','Low')
	INSERT INTO Department VALUES(114,'Real','Zindane')
	INSERT INTO Department VALUES(115,'Barca','Huaer')
	INSERT INTO Department VALUES(116,'Manu','Sir Alex')
	INSERT INTO Department VALUES(117,'ManC','Scooler')
	INSERT INTO Department VALUES(118,'Chelse','Lampard')
	INSERT INTO Department VALUES(119,'Liverpool','Gerrard')
--
	INSERT INTO Assignment VALUES(221,'BTHN')
	INSERT INTO Assignment VALUES(222,'Start')
	INSERT INTO Assignment VALUES(223,'Start1')
	INSERT INTO Assignment VALUES(224,'Start2')
	INSERT INTO Assignment VALUES(225,'Start3')
	INSERT INTO Assignment VALUES(226,'Start4')
	INSERT INTO Assignment VALUES(227,'Start5')
	INSERT INTO Assignment VALUES(228,'Start6')
	INSERT INTO Assignment VALUES(229,'FInish')
--
select *from Works_Assign
	INSERT INTO Works_Assign VALUES(311,001,221,'2','Lam Ngay')
	INSERT INTO Works_Assign VALUES(312,002,222,'4','Mai lam')
	INSERT INTO Works_Assign VALUES(312,002,222,'2','Lam Ngay')
	INSERT INTO Works_Assign VALUES(313,003,223,'2','Lam Ngay')
	INSERT INTO Works_Assign VALUES(314,004,224,'2','Lam Ngay')
	INSERT INTO Works_Assign VALUES(315,005,225,'2','Lam Ngay')
	INSERT INTO Works_Assign VALUES(316,006,226,'2','Lam Ngay')
	INSERT INTO Works_Assign VALUES(317,007,227,'2','Lam Ngay')
	INSERT INTO Works_Assign VALUES(318,008,228,'2','Lam Ngay')
	INSERT INTO Works_Assign VALUES(319,009,229,'4','Lam Ngay')

--
--1
	CREATE INDEX IX_Student ON Student(StudentNo,StudentName);
--2
	USE RiverPlate1
	GO
	ALTER INDEX [IX_Student] ON Student REORGANIZE;
	GO
	--
	ALTER INDEX IX_Student ON Student 
	REBUILD;
	--3
	CREATE UNIQUE NONCLUSTERED INDEX 
	IX_Dept 
	ON Department
	(
		   DeptName ASC,
		   Managername ASC,
		  DeptNo ASC
	)ON [PRIMARY]
	GO
	







