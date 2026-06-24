select * from products
where title in ('iphone14','iphone12');
select * from emp;
where job in ('clerk','president');
-- WAQTD details of the emp who are working as a analyst or salesman in deptno 20 or 30--
select * from emp
where job in ('analyst','salesman') and deptno in (20,30);
-- WAQTD details of the emp whos name is either A,B,F and working in deptno 10,30--
select * from emp
where ename in('A','B','F') and deptno in(10,30);
-- WAQTD details of employees whose job is either CLERK or MANAGER and working in deptno 10 or 20.--
select * from emp
where job in('clerk','manager') and deptno in(10,20);
-- WAQTD details of employees whose name is A, C, E.-
select * from emp
where ename in ('A','C','E');
-- WAQTD details of employees working in deptno 10 or 30.--
select * from emp
where deptno in (10,30);
select * from emp
where deptno=10 and deptno=20;
-- WAQTD details of employees whose job is CLERK or ANALYST.
select * from emp
where job in ('clerk','analyst');
-- WAQTD details of employees whose name is B, D, F and working in deptno 20 or 50.
select * from emp
where ename in ('B','D','F') and deptno in(20,50);
-- WAQTD details of employees whose job is MANAGER or SALESMAN and working in deptno 20 or 30.
select * from emp 
where job in ('manager','salesman') and deptno in (20,30);
-- WAQTD details of employees whose name is A, B, C and whose job is CLERK or MANAGER.
select * from emp
 where ename in('A','B','C') and job in('clerk','manager');
