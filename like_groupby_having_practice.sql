--   LIKE + GROUP BY + HAVING
-- ===========================

-- 1.Department-wise employee count for employees whose names start with 'S'
SELECT deptno, COUNT(*)
FROM emp
WHERE ename LIKE 'S%'
GROUP BY deptno;

 -- 2. Department-wise total salary for employees whose names end with 'N'
SELECT deptno, SUM(sal)
FROM emp
WHERE ename LIKE '%N'
GROUP BY deptno;

-- 3 Job-wise average salary for employees whose names contain 'A'
SELECT job, AVG(sal)
FROM emp
WHERE ename LIKE '%A%'
GROUP BY job;

-- 4. Departments having more than 2 employees whose names start with 'M'
SELECT deptno, COUNT(*)
FROM emp
WHERE ename LIKE 'M%'
GROUP BY deptno
HAVING COUNT(*) > 2;

-- 5. Jobs having total salary greater than 10000 for employees whose names contain 'R'
SELECT job, SUM(sal)
FROM emp
WHERE ename LIKE '%R%'
GROUP BY job
HAVING SUM(sal) > 10000;

-- 6. Managers having more than 3 employees whose names end with 'Y'
SELECT mgr, COUNT(*)
FROM emp
WHERE ename LIKE '%Y'
GROUP BY mgr
HAVING COUNT(*) > 3;

-- 7. Department-wise maximum salary for employees whose names start with 'J'
SELECT deptno, MAX(sal)
FROM emp
WHERE ename LIKE 'J%'
GROUP BY deptno;

-- 8. Department-wise minimum salary for employees whose second character is 'A'
SELECT deptno, MIN(sal)
FROM emp
WHERE ename LIKE '_A%'
GROUP BY deptno;

-- 9. Jobs having average salary greater than 3000 for employees whose names contain 'E'
SELECT job, AVG(sal)
FROM emp
WHERE ename LIKE '%E%'
GROUP BY job
HAVING AVG(sal) > 3000;

-- 10. Department-wise employee count for employees whose names have exactly 4 characters
SELECT deptno, COUNT(*)
FROM emp
WHERE ename LIKE '____'
GROUP BY deptno;

-- 11. Department-wise total salary for employees whose names start with 'S'
SELECT deptno, SUM(sal)
FROM emp
WHERE ename LIKE 'S%'
GROUP BY deptno;

-- 12. Jobs having more than 2 employees whose names contain 'A'
SELECT job, COUNT(*)
FROM emp
WHERE ename LIKE '%A%'
GROUP BY job
HAVING COUNT(*) > 2;

-- 13. Managers having average salary greater than 4000 for employees whose names end with 'N'
SELECT mgr, AVG(sal)
FROM emp
WHERE ename LIKE '%N'
GROUP BY mgr
HAVING AVG(sal) > 4000;

-- 14. Departments having maximum salary greater than 5000 for employees whose job starts with 'M'
SELECT deptno, MAX(sal)
FROM emp
WHERE job LIKE 'M%'
GROUP BY deptno
HAVING MAX(sal) > 5000;

-- 15. Department-wise employee count for employees whose names contain 'A' and departments having more than 2 employees
SELECT deptno, COUNT(*)
FROM emp
WHERE ename LIKE '%A%'
GROUP BY deptno
HAVING COUNT(*) > 2;