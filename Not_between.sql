select * from emp;
-- WQTD details of employees whose eno is not between 2 and 4.
select * from emp 
where eno<2 or eno>4;
-- WQTD names of employees working in departments not between 20 and 40.
select ename from emp
where deptno not between 20 and 40;
-- WQTD details of employees hired not between 1981 and 1982
select * from emp
where hire_date not between 1981 and 1982;
-- WQTD details of employees hired not between '1981-01-01' and '1982-12-31'.
select * from emp
where hire_date not between '1981-01-01' and '1982-12-31';
-- WQTD names and department numbers of employees whose employee number is not between 4 and 6.
select ename,deptno from emp 
where eno not between 4 and 6;
-- WQTD names of employees working in departments not between 20 and 50.
select * from emp 
where deptno not between 20 and 50;
-- WQTD details of employees whose employee number is not between 2 and 5 and working in department 30.
select * from emp 
where eno not between 2 and 5 and  deptno=30;
-- WQTD names of employees hired not between 1981 and 1983 and working in department 30
select ename from emp 
where hire_date not between 1981 and 1983 and deptno =30;