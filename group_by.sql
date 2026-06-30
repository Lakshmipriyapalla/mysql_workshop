select * from emp;
----- GROUP BY PRACTICE QUERIES------
-- Department-wise employee count.
select count(deptno) from emp group by deptno;
-- Department-wise total salary.
select deptno, sum(sal) from emp group by deptno;
-- Department-wise maximum salary.
select deptno, max(sal) from emp group by deptno;
-- Department-wise minimum salary.
select deptno,min(sal) from emp group by deptno;
-- Job-wise employee count.
select job, count(*) from emp group by job;
-- Job-wise total salary.
select job,sum(sal) from emp group by job;
-- Job-wise average salary.
select job,avg(sal) from emp group by job;
-- Job-wise highest salary.
select  job,max(sal) from emp group by  job;
-- Job-wise lowest salary.
select job,min(sal) from emp group by job;
-- Each department lo highest salary entha?
select deptno,max(sal) from emp group by deptno;
-- Each department lo lowest salary entha?
select deptno,min(sal) from emp group by deptno;
-- Department-wise employees count + total salary.
select  deptno,sum(sal) , count(*) from emp group by deptno;