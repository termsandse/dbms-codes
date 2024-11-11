REM   Script: Session 09
REM   SQL TABLE

CREATE TABLE Course ( 
    DeptNo NUMBER(2) PRIMARY KEY, 
    Dname VARCHAR2(20), 
    Location VARCHAR2(10) 
);

CREATE TABLE Student ( 
    StudentId NUMBER(4) PRIMARY KEY, 
    StudentName VARCHAR2(40) NOT NULL, 
    Address1 VARCHAR2(300), 
    Gender VARCHAR2(15), 
    Course VARCHAR2(8), 
    Deptno NUMBER(2), 
    FOREIGN KEY (Deptno) REFERENCES Course(DeptNo) 
);

INSERT INTO Course (DeptNo, Dname, Location)  
VALUES (10, 'Computer Science', 'New Delhi');

INSERT INTO Course (DeptNo, Dname, Location)  
VALUES (20, 'Mathematics', 'Haryana');

INSERT INTO Course (DeptNo, Dname, Location)  
VALUES (30, 'Python', 'Punjab');

INSERT INTO Course (DeptNo, Dname, Location)  
VALUES (40, 'ITPC', 'Mumbai');

INSERT INTO Course (DeptNo, Dname, Location)  
VALUES (50, 'MCA', 'Goa');

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno)  
VALUES (7369, 'Ryan Doe', '116 lado Sarai, ND', 'Male', 'BCA', 10);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno)  
VALUES (7777, 'Bose Singh', '456 Mohali Road, Pun', 'Female', 'MCA', 50);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno)  
VALUES (2233, 'Jacob Johnson', '789 Pune, Mum', 'Male', 'BCA', 20);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno)  
VALUES (1111, 'Sarah Lee', '321 Sonipat EX, HR', 'Female', 'BCA', 40);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno)  
VALUES (5555, 'Robert Brown', '654 Baga Beach, Goa', 'Male', 'MCA', 50);

SELECT * FROM Student;

SELECT StudentId, Course FROM Student;

SELECT Dname, Location FROM Course;

SELECT * FROM Student WHERE Course = 'MCA';

SELECT StudentName FROM Student  
WHERE StudentId IN (7369, 7777, 2233);

SELECT StudentName FROM Student  
WHERE StudentName LIKE '_k%';

SELECT StudentName FROM Student  
WHERE Deptno NOT IN (10, 40);

SELECT StudentName FROM Student  
WHERE StudentName LIKE 'S%' AND StudentName NOT LIKE 's%';

SELECT StudentName FROM Student  
WHERE StudentName LIKE '_k%';

SELECT * FROM Student  
WHERE Deptno IS NULL;

SELECT * FROM Student  
ORDER BY Course ASC;

SELECT COUNT(*) FROM Student  
WHERE Course = 'BCA';

SELECT COUNT(*) FROM Student;

SELECT * FROM Student  
WHERE Deptno IN (1, 2);

SELECT * FROM Student  
ORDER BY Course;

SELECT * FROM Student  
ORDER BY StudentName;

