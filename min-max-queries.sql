select * from emp;
       -- MAX() PRACTICE QUESTIONS
-- Find the highest salary in the table.
select max(sal) from emp;
-- Find the lowest salary in the table.
select min(sal) from emp;
-- Find the highest salary among clerks.
select max(sal) from emp  where job='clerk';
-- Find the lowest salary among employees in dept 30.
select min(sal) from emp  where deptno=30;
-- Find the highest salary among employees whose salary is not NULL.
select max(sal) from emp where sal is not null;
-- Find the highest salary among employees whose job is 'manager'
select max(sal) from emp where job='manager';
    -- MIN() PRACTICE QUESTIONS
-- Find the lowest salary in the table.
select min(sal) from emp;
-- Find the lowest salary among clerks.
select min(sal) from emp where job='clerk';
-- Find the lowest salary among managers.
select min(sal) from emp where job='manager';
-- Find the lowest salary in dept 30.
select min(sal) from emp where deptno=30;
     -- SUBQUERIES USING MAX AND MIN
-- Find the employee name and salary who earns the highest salary in dept 30.
select ename, sal from emp where sal=(select max(sal) from emp where deptno=30);
-- Find the employee name and salary who earns the lowest salary.
select ename,sal from emp where sal=(select min(sal) from emp);
-- Find the employee(s) who earn the lowest salary in the whole table.
select * from emp where sal=(select min(sal) from emp);
-- Find lowest salary in dept 20.
select min(sal) from emp where deptno=20;
-- Find lowest salary in dept 50.
select min(sal) from emp where deptno=50;
-- How many employees have the lowest salary?
select count(*) from emp where sal=(select min(sal) from emp);
-- Is there any employee with NULL salary affecting MIN()??
select * from emp where sal is null;