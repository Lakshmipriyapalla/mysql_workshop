
use student_db;

create table department (
deptno int primary  key,
dname varchar(10),
loc varchar(10));

INSERT INTO department VALUES
(10,'HR','Hyderabad'),
(20,'Sales','Chennai'),
(30,'IT','Bangalore'),
(40,'Finance','Mumbai'),
(50,'Marketing','Pune');


create table employee(
eno int primary key,
ename varchar(10),
job varchar(10),
sal int, 
hire_date date,
deptno int);

alter table employee 
rename column hire_date to hiredate;

INSERT INTO employee VALUES
(101,'Priya','Clerk',25000,'2022-01-10',10),
(102,'Lakshmi','Manager',50000,'2021-05-15',20),
(103,'Teja','Developer',40000,'2023-02-20',30),
(104,'Radha','Analyst',35000,'2020-08-12',30),
(105,'Pandu','Accountant',30000,'2019-11-18',40),
(106,'Palla','Clerk',22000,'2024-03-25',50); 

-- ==========================================
-- INNER JOIN BASICS
-- Database : student_db
-- Tables    : employee, department
-- ==========================================

-- Q1. Display employee name and department name.

SELECT ename, dname
FROM employee
JOIN department
ON employee.deptno = department.deptno;

-- ==========================================

-- Q2. Display employee name and location.

SELECT ename, loc
FROM employee
JOIN department
ON employee.deptno = department.deptno;

-- ==========================================

-- Q3. Display employee name, job and department name.

SELECT ename, job, dname
FROM employee
JOIN department
ON employee.deptno = department.deptno;

-- ==========================================

-- Q4. Display employee name, salary and location.

SELECT ename, sal, loc
FROM employee
JOIN department
ON employee.deptno = department.deptno;

-- ==========================================

-- Q5. Display employee name, hire date and department name.

SELECT ename, hiredate, dname
FROM employee
JOIN department
ON employee.deptno = department.deptno;

-- ==========================================

-- Q6. Display employee name, department number and location.

SELECT ename, employee.deptno, loc
FROM employee
JOIN department
ON employee.deptno = department.deptno;

-- ==========================================

-- Q7. Display employee name, job, salary and department name.

SELECT ename, job, sal, dname
FROM employee
JOIN department
ON employee.deptno = department.deptno;

-- ==========================================

-- Q8. Display employee name and department name
-- for employees working in IT department.

SELECT ename, dname
FROM employee
JOIN department
ON employee.deptno = department.deptno
WHERE dname = 'IT';

-- ==========================================

-- Q9. Display employee name, salary and department name
-- for employees whose salary is greater than 30000.

SELECT ename, sal, dname
FROM employee
JOIN department
ON employee.deptno = department.deptno
WHERE sal > 30000;


