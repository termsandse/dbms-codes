REM   Script: meet saini
REM   122

CREATE TABLE employee (   
    emp_no NUMBER,   
    emp_name VARCHAR2(10),   
    job VARCHAR2(10),   
    mgr NUMBER,   
    salary NUMBER   
);

alter table employee  
add comission number ;

INSERT INTO employee (emp_no, emp_name, job, mgr , salary  ) VALUES (101, 'mohan', 'HR', 1001, 300000) ;

INSERT INTO employee (emp_no, emp_name, job, mgr , salary ) VALUES (102, 'ram', 'Marketing', 1002, 300000)  ;

INSERT INTO employee (emp_no, emp_name, job, mgr , salary ) VALUES (103, 'shyam', 'Marketing', 1003, 30000)  ;

INSERT INTO employee (emp_no, emp_name, job, mgr , salary ) VALUES (104, 'sohan', 'peon', 1004, 90000)  ;

INSERT INTO employee (emp_no, emp_name, job, mgr , salary ) VALUES (105, 'yogesh', 'Finance', 1005, 400000)  ;

ALTER TABLE employee  
RENAME COLUMN mgr TO mgr_no;

CREATE TABLE department (  
    dept_no INT PRIMARY KEY,  
    dept_name VARCHAR(10),  
    dloc VARCHAR(10)  
);

ALTER TABLE Department  
ADD designation varchar(20) ;

INSERT INTO department (dept_no, dept_name, dloc) VALUES (03, 'Computer', 'INDIA')  ;

INSERT INTO department (dept_no, dept_name, dloc) VALUES (06, 'Software', 'INDIA')  ;

INSERT INTO department (dept_no, dept_name, dloc) VALUES (09, 'Mechanical', 'INDIA')  ;

ALTER TABLE department 
DROP COLUMN dloc;

CREATE TABLE customer ( 
    customer_id INT PRIMARY KEY,           
    first_name VARCHAR(50) NOT NULL,      
    last_name VARCHAR(50) NOT NULL,        
    email VARCHAR(100) UNIQUE NOT NULL,     
    phone_number VARCHAR(15) 
);

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number) VALUES 
(1, 'Ram', 'Sethi', 'ram@example.com', NULL);

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number) VALUES 
(2, 'Bob', 'Smith', 'bob@example.com', '123-456-7890');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number) VALUES 
(3, 'Sohan', 'gupta', 'sohan@example.com', NULL);

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number) VALUES 
(4, 'Devanshu', 'Sarma', 'deevanshu12@example.com', '987-654-3210');

INSERT INTO customer (customer_id, first_name, last_name, email, phone_number) VALUES 
(5, 'Ethan', 'Singh', 'ethan@example.com', NULL);

ALTER TABLE customer 
ADD CONSTRAINT unique_phone_number UNIQUE (phone_number);

CREATE TABLE employee_01 ( 
    employee_01_id INT PRIMARY KEY, 
    employee_01_name VARCHAR(100) NOT NULL, 
    employee_01_age INT NOT NULL, 
    employee_01_salary DECIMAL(10, 2) NOT NULL 
);

INSERT INTO employee_01 (employee_01_id, employee_01_name, employee_01_age, employee_01_salary) VALUES 
(1, 'Alice Johnson', 30, 75000.00);

INSERT INTO employee_01 (employee_01_id, employee_01_name, employee_01_age, employee_01_salary) VALUES 
(2, 'Bob Smith', 25, 62000.00);

INSERT INTO employee_01 (employee_01_id, employee_01_name, employee_01_age, employee_01_salary) VALUES 
(3, 'Charlie Brown', 28, 58000.00);

INSERT INTO employee_01 (employee_01_id, employee_01_name, employee_01_age, employee_01_salary) VALUES 
(4, 'Diana Prince', 35, 90000.00);

INSERT INTO employee_01 (employee_01_id, employee_01_name, employee_01_age, employee_01_salary) VALUES 
(5, 'Ethan Hunt', 40, 72000.00);

INSERT INTO employee_01 (employee_01_id, employee_01_name, employee_01_age, employee_01_salary) VALUES 
(6, 'Fiona Gallagher', 22, 64000.00);

INSERT INTO employee_01 (employee_01_id, employee_01_name, employee_01_age, employee_01_salary) VALUES 
(7, 'George Clark', 45, 85000.00);

ALTER TABLE employee 
ADD department_number INT;

UPDATE employee  
SET job = 'Trainer'  
WHERE emp_no = 103;

delete from employee  
where emp_no = 105;

SELECT dept_name FROM department;

UPDATE department  
SET designation ='accountant'  
where dept_no = 09;

SELECT * FROM customer;

SELECT COUNT(*) AS total_employees 
FROM employee_01;

SELECT MIN(employee_01_age) AS minimum_age 
FROM employee_01;

SELECT MIN(employee_01_salary) AS minimum_salary 
FROM employee_01;

SELECT SUM(employee_01_age) AS total_age 
FROM employee_01;

SELECT AVG(employee_01_salary) AS average_salary 
FROM employee_01;

SELECT employee_01_name, employee_01_salary 
FROM employee_01 
ORDER BY employee_01_salary ASC;

SELECT employee_01_name, employee_01_salary 
FROM employee_01 
ORDER BY employee_01_salary DESC;

SELECT employee_01_name, employee_01_salary 
FROM employee_01 
WHERE employee_01_age < 29 AND employee_01_salary < 10000;

SELECT MIN( Salary) AS minimum_salary 
FROM employee 
JOIN department  ON dept_no = dept_no 
WHERE dept_name = 'Marketing';

SELECT job 
FROM employee 
WHERE job  = (SELECT job FROM employee WHERE job = 'Finance');

ALTER TABLE employee 
ADD CONSTRAINT department 
FOREIGN KEY (dept_no) REFERENCES department(dept_no);

