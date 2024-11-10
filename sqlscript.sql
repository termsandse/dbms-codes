REM   Script: Session 08
REM   MEET

CREATE TABLE Student ( 
    StudentId NUMBER(4) PRIMARY KEY, 
    StudentName VARCHAR2(40) NOT NULL, 
    Address1 VARCHAR2(300), 
    Gender VARCHAR2(15), 
    Course VARCHAR2(8) 
);

desc Student 


CREATE TABLE Course ( 
    CourseID NUMBER(2) PRIMARY KEY, 
    DeptNo NUMBER(2), 
    Dname VARCHAR2(20), 
    Location VARCHAR2(10) 
);

desc Course


INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course) VALUES 
(1001, 'John', '123 Elm St', 'Male', 'MCA'), 
(1002, 'Jane', '456 Oak St', 'Female', 'MBA'), 
(1003, 'Mike', '789 Pine St', 'Male', 'MCA'), 
(1004, 'Emily', '101 Maple St', 'Female', 'BCA'), 
(1005, 'Sam', '202 Cedar St', 'Male', 'MBA');

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course) VALUES 
(1001, 'John', '123 Elm St', 'Male', 'MCA'), 
(1002, 'Jane', '456 Oak St', 'Female', 'MBA'), 
(1003, 'Mike', '789 Pine St', 'Male', 'MCA'), 
(1004, 'Emily', '101 Maple St', 'Female', 'BCA'), 
(1005, 'Sam', '202 Cedar St', 'Male', 'MBA');

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course) VALUES 
(1001, 'John', '123 Elm St', 'Male', 'MCA');

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course) VALUES 
 
(1002, 'Jane', '456 Oak St', 'Female', 'MBA');

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course) VALUES 
 
(1003, 'Mike', '789 Pine St', 'Male', 'MCA');

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course) VALUES 
 
(1004, 'Emily', '101 Maple St', 'Female', 'BCA');

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course) VALUES 
 
(1005, 'Sam', '202 Cedar St', 'Male', 'MBA');

INSERT INTO Course (CourseID, DeptNo, Dname, Location) VALUES 
(1, 10, 'MCA', 'Block A');

INSERT INTO Course (CourseID, DeptNo, Dname, Location) VALUES 
(2, 20, 'MBA', 'Block B');

INSERT INTO Course (CourseID, DeptNo, Dname, Location) VALUES 
(3, 30, 'BCA', 'Block C');

INSERT INTO Course (CourseID, DeptNo, Dname, Location) VALUES 
(4, 40, 'BBA', 'Block D');

INSERT INTO Course (CourseID, DeptNo, Dname, Location) VALUES 
(5, 50, 'MSC', 'Block E');

SELECT * FROM Student;

SELECT StudentId, Course FROM Student;

SELECT Dname, Location FROM Course;

SELECT * FROM Student WHERE Course = 'MCA';

SELECT StudentName FROM Student  
WHERE StudentId IN (7369, 7777, 2233);

SELECT StudentName FROM Student  
WHERE StudentId IN (7369, 7777, 2233);

SELECT s.StudentName FROM Student s 
JOIN Course c ON s.Course = c.Dname 
WHERE c.DeptNo NOT IN (10, 40);

SELECT StudentName FROM Student  
WHERE StudentName LIKE 'S%';

