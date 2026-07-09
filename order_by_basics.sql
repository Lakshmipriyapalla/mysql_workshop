select * from emp;
-- Topic: ORDER BY
-- ORDER BY - Numbers
--------------------------------------------------
-- 1. Display all employee details.
SELECT *
FROM emp;

-- 2. Display all employee details in ascending order of Salary.
SELECT *
FROM emp
ORDER BY sal;

-- 3. Display all employee details in descending order of Salary.
SELECT *
FROM emp
ORDER BY sal DESC;

-- 4. Display only employee names in alphabetical order.
SELECT ename
FROM emp
ORDER BY ename;

-- 5. Display only employee names in reverse alphabetical order.
SELECT ename
FROM emp
ORDER BY ename DESC;

-- 6. Display employee number, employee name and salary sorted by Salary.
SELECT eno, ename, sal
FROM emp
ORDER BY sal;

--------------------------------------------------
-- ORDER BY - Dates
--------------------------------------------------

-- 7. Display all employee details sorted by HireDate (Oldest to Latest).
SELECT *
FROM emp
ORDER BY hire_date;

-- 8. Display all employee details sorted by HireDate (Latest to Oldest).
SELECT *
FROM emp
ORDER BY hire_date DESC;

-- 9. Display employee name and HireDate sorted by HireDate.
SELECT ename, hire_date
FROM emp
ORDER BY hire_date;

--------------------------------------------------
-- ORDER BY - Strings
--------------------------------------------------

-- 10. Display all employee details in alphabetical order of employee name.
SELECT *
FROM emp
ORDER BY ename;

-- 11. Display all employee details in reverse alphabetical order of employee name.
SELECT *
FROM emp
ORDER BY ename DESC;

-- 12. Display employee name and job in alphabetical order of Job.
SELECT ename, job
FROM emp
ORDER BY job;

-- 13. Display employee name and job in reverse alphabetical order of Job.
SELECT ename, job
FROM emp
ORDER BY job DESC;

-- 14. Display all employee details sorted by Job.
SELECT *
FROM emp
ORDER BY job;

-- 15. Display all employee details sorted by Job in reverse alphabetical order.
SELECT *
FROM emp
ORDER BY job DESC;

-- 16. Display employee number, employee name and Job sorted by employee name.
SELECT eno, ename, job
FROM emp
ORDER BY ename;

-- 17. Display employee name, Job and Department number sorted by employee name.
SELECT ename, job, deptno
FROM emp
ORDER BY ename;

-- 18. Display employee name, salary and Job sorted by Job.
SELECT ename, sal, job
FROM emp
ORDER BY job;

-- 19. Display employee name and Department number sorted alphabetically by employee name.
SELECT ename, deptno
FROM emp
ORDER BY ename;

-- 20. Display employee name and Salary sorted alphabetically by employee name.
SELECT ename, sal
FROM emp
ORDER BY ename;

-- 21. Display all employee details sorted alphabetically by employee name (without using ASC).
SELECT *
FROM emp
ORDER BY ename;