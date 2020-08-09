CREATE DATABASE APTECH
--
CREATE TABLE Classes
(
	ClassName CHAR(6),
	Teacher	VARCHAR(30) ,
	TimeSlot VARCHAR(30),
	Class INT,
	Lab int
)
	INSERT INTO Classes VALUES('12A1','Hoang','2h',12,12)
	INSERT INTO Classes VALUES('12A2','Tuan','2h',13,12)
	INSERT INTO Classes VALUES('12A1','Hai','2h',12,10)
	INSERT INTO Classes VALUES('12A1','Vu','2h',15,16)
	INSERT INTO Classes VALUES('12A1','Anh','2h',12,12)
--1
	CREATE INDEX MyClusteredIndex ON Classes(ClassName);
	--
	CREATE UNIQUE INDEX MyClusterd
	ON Classes (Classname)
--2
CREATE UNIQUE NONCLUSTERED INDEX 
	TeacherIndex 
	ON Classes(Teacher)
--3
	DROP INDEX TeacherIndex;
--4
--5
--6
	Select * from Classes

	

	

