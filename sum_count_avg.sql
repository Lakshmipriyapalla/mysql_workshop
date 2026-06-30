select * from emp;
------ SUM() PRACTICED QUERIES
-- Total salary of all employees.
select sum(sal) from emp;
-- Total salary in dept 20.
select sum(sal) from emp where deptno=20;
-- Total salary of MANAGERs.
select sum(sal) from emp where job='manager';
-- Total salary of employees earning more than 2000.
select sum(sal) from emp where sal>2000;
-- Total salary of employees whose job is CLERK.
select sum(sal) from emp where job='clerk';
-- Total salary of employees earning more than average salary. (subquery)
select sum(sal) from emp where sal > (select avg(sal));

----- COUNT() PRACTICED QUESTIONS-----
-- How many employees are there in the emp table?
select count(*) from emp;
-- How many employees belong to department 10?
select count(*) from emp where deptno=10;
-- How many employees belong to department 30?
select count(*) from emp where deptno=30;
-- How many employees earn more than 2000?
select count(*) from emp where sal > 2000;
-- How many employees earn less than 1500?
select count(*) from emp where sal < 1500;
-- How many employees are CLERKs?
select count(*) from emp where job='clerk';
 -- How many employees are MANAGERs?
 select count(*) from emp where job='manager';
-- Count all rows in the table.
select count(*) from emp;
-- Count only non-NULL salary values.
select count(sal) from emp;
-- How many distinct departments exist in the EMP table?
select count(distinct deptno) from emp;
-- How many distinct jobs exist in the EMP table?
select count(distinct job) from emp;

----- AVG() PRACTICED QUERIES----------
--- What is the average salary of all employees?
 select avg(sal) from emp;
 -- What is the average salary in department 10?
 select avg(sal) from emp where deptno=10;
 -- What is the average salary of MANAGERs?
 select avg(sal) from emp  where job='manager';
 -- What is the average salary of employees earning more than 2000?
 select avg(sal) from emp where sal > 2000;
 -- What is the average salary of employees earning less than 1500?
 select avg(sal) from emp where sal< 1500;
 -- What is the average salary in department 10 for employees earning more than 1000?
select avg(sal) from emp where deptno=10 and sal >1000;
-- What is the average salary in department 30 for SALESMAN employees?
select avg(sal) from emp where deptno=30 and job='salesman';
-- What is the average salary of employees in departments 10 and 20?
select avg(sal) from emp where deptno in (10,20);
-- - What is the average salary of employees not in department 30?
select avg(sal) from emp where deptno not in (30);
-- What is the average salary of employees whose job is not CLERK?
select avg(sal) from emp where job!='clerk';
--  What is the average salary of employees earning between 1000 and 3000?
select avg(sal) from emp where sal between 1000 and 3000;