select * from emp;
-- WQTD employee names whose hire_date is not null.
select ename from emp
where hire_date is not null;
-- WQTD details of employees whose job is not null and eno > 3.
select * from emp
where job is not null and eno >3;
-- WQTD employee names whose hire_date is not null and job = 'clerk'.
select ename from emp 
where hire_date is not null and job='clerk';
-- WQTD details of employees whose deptno is not null and deptno = 30.
select * from emp
where deptno is not null and  deptno=30;
alter table emp
add sal int;
--
update emp
set sal=10000
where eno=1;
update emp set sal=30000 where eno=5;
update emp 
set sal=case 
when eno=2 then 20000
when eno=4 then 40000
when eno=6 then null
when eno=3 then 50000
end
where eno in(2,4,6,3);
update emp set sal=null where eno=3;
-- Display the details of employees whose salary is NULL.
select * from emp
where sal is null;
-- Display the employee number and job of employees whose salary is NULL.
select eno, job from emp
where sal is null;
-- Count the number of employees whose salary is NULL
select count(*) from emp
where sal is null;
-- Display the details of employees whose salary is NOT NULL and whose salary is greater than 20000.
select * from emp
where sal is not null and sal >20000;
-- Display the details of employees whose salary is NOT NULL and whose department number is 20 or 30
select * from emp 
where sal is not null and deptno in(20,30);
-- Display the names of employees whose salary is NULL and whose department number is 50.
select ename from emp 
where sal is null and deptno=50;
-- Display the details of employees who belong to department 30 and whose salary is NOT NULL.
select * from emp 
where deptno=30 and sal is not null;
-- Display the details of employees whose job is 'clerk' and whose salary is NOT NULL.
select * from emp 
where job='clerk' and sal is not null;
-- Display the details of employees whose salary is NULL or who belong to department 10.
select * from emp where sal is null and deptno=10;