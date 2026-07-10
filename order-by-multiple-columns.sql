-- ORDER BY - Multiple Columns Practice

-- 1. Display all employee details sorted by Department Number, then Salary.
SELECT *
FROM emp
ORDER BY deptno, sal;

-- 2. Display all employee details sorted by Department Number ascending, then Salary descending.
SELECT *
FROM emp
ORDER BY deptno, sal DESC;

-- 3. Display employee name, department number and salary sorted by Department Number, then Employee Name.
SELECT ename, deptno, sal
FROM emp
ORDER BY deptno, ename;

-- 4. Display employee name, job and salary sorted by Job, then Salary.
SELECT ename, job, sal
FROM emp
ORDER BY job, sal;

-- 5. Display all employee details sorted by Job, then Employee Name.
SELECT *
FROM emp
ORDER BY job, ename;

-- 6. Display employee name, hiredate and department number sorted by Department Number, then HireDate.
SELECT ename, hire_date, deptno
FROM emp
ORDER BY deptno, hire_date;

-- 7. Display employee name, department number and salary sorted by Salary descending, then Employee Name.
SELECT ename, deptno, sal
FROM emp
ORDER BY sal DESC, ename;

-- 8. Display all employee details sorted by Department Number, Job and Salary.
SELECT *
FROM emp
ORDER BY deptno, job, sal;

-- 9. Display employee number, employee name and job sorted by Job, then Employee Name.
SELECT eno, ename, job
FROM emp
ORDER BY job, ename;

-- 10. Display employee name and hiredate sorted by HireDate descending, then Employee Name.
SELECT ename, hire_date
FROM emp
ORDER BY hire_date DESC, ename;

-- 11. Display employee name, job and department number sorted by Department Number, then Job.
SELECT ename, job, deptno
FROM emp
ORDER BY deptno, job;

-- 12. Display all employee details sorted by Job descending, then Salary descending.
SELECT *
FROM emp
ORDER BY job DESC, sal DESC;

-- 13. Display employee number, employee name, salary and department number sorted by Salary, then Department Number.
SELECT eno, ename, sal, deptno
FROM emp
ORDER BY sal, deptno;

-- 14. Display employee name and hiredate sorted by Employee Name, then HireDate.
SELECT ename, hiredate
FROM emp
ORDER BY ename, hiredate;

-- 15. Display all employee details sorted by Department Number descending, then Employee Name ascending.
SELECT *
FROM emp
ORDER BY deptno DESC, ename;