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
-- waqtdthe max sal in each deptno if the wmp doesnot work as president
select deptno,max(sal) from emp where job!='president' group by deptno;
-- waqtd the distint deptno withoit using  distinct?
select deptno from emp group by deptno;
-- waqtq the deptno along with the total sal if the sal is < 3000
select deptno, sum(sal) from emp where sal< 3000 group by deptno;
-- no.of emps & total sal needed to pay the emps who have 2 consecutices LL's in their names
select count(*) ,sum(sal) from emp where ename like '%ll%';
-- waqtd no.of distinct sal present in table
select count(distinct sal) from emp;