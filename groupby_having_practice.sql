-- Q1. Department-wise employee count
SELECT deptno, COUNT(*)
FROM emp
GROUP BY deptno;

-- Q2. Department-wise total salary
SELECT deptno, SUM(sal)
FROM emp
GROUP BY deptno;

-- Q3. Departments having more than 3 employees
SELECT deptno, COUNT(*)
FROM emp
GROUP BY deptno
HAVING COUNT(*) > 3;

-- Q4. Departments having total salary greater than 10000
SELECT deptno, SUM(sal)
FROM emp
GROUP BY deptno
HAVING SUM(sal) > 10000;

-- Q5. Departments having average salary greater than 3000
SELECT deptno, AVG(sal)
FROM emp
GROUP BY deptno
HAVING AVG(sal) > 3000;

-- Q6. Job-wise employee count
SELECT job, COUNT(*)
FROM emp
GROUP BY job;

-- Q7. Job-wise total salary
SELECT job, SUM(sal)
FROM emp
GROUP BY job;

-- Q8. Manager-wise employee count
SELECT mgr, COUNT(*)
FROM emp
GROUP BY mgr;

-- Q9. Department-wise maximum salary
SELECT deptno, MAX(sal)
FROM emp
GROUP BY deptno;

-- Q10. Department-wise minimum salary
SELECT deptno, MIN(sal)
FROM emp
GROUP BY deptno;

-- Q11. Jobs having more than 2 employees
SELECT job, COUNT(*)
FROM emp
GROUP BY job
HAVING COUNT(*) > 2;

-- Q12. Jobs having total salary greater than 5000
SELECT job, SUM(sal)
FROM emp
GROUP BY job
HAVING SUM(sal) > 5000;

-- Q13. Jobs having average salary greater than 2500
SELECT job, AVG(sal)
FROM emp
GROUP BY job
HAVING AVG(sal) > 2500;

-- Q14. Managers having more than 3 employees
SELECT mgr, COUNT(*)
FROM emp
GROUP BY mgr
HAVING COUNT(*) > 3;

-- Q15. Departments having maximum salary greater than 4000
SELECT deptno, MAX(sal)
FROM emp
GROUP BY deptno
HAVING MAX(sal) > 4000;

-- Q16. Department-wise employee count and total salary
SELECT deptno, SUM(sal), COUNT(*)
FROM emp
GROUP BY deptno;

-- Q17. Department-wise employee count and average salary
SELECT deptno, AVG(sal), COUNT(*)
FROM emp
GROUP BY deptno;

-- Q18. Departments having more than 2 employees
SELECT deptno, COUNT(*)
FROM emp
GROUP BY deptno
HAVING COUNT(*) > 2;

-- Q19. Departments having average salary greater than 2000
SELECT deptno, AVG(sal)
FROM emp
GROUP BY deptno
HAVING AVG(sal) > 2000;

-- Q20. Departments having total salary greater than 10000
SELECT deptno, SUM(sal)
FROM emp
GROUP BY deptno
HAVING SUM(sal) > 10000;

-- Q21. Jobs having average salary greater than 3000
SELECT job, AVG(sal)
FROM emp
GROUP BY job
HAVING AVG(sal) > 3000;

-- Q22. Departments having more than 5 employees
SELECT deptno, COUNT(*)
FROM emp
GROUP BY deptno
HAVING COUNT(*) > 5;

-- Q23. Jobs having maximum salary greater than 5000
SELECT job, MAX(sal)
FROM emp
GROUP BY job
HAVING MAX(sal) > 5000;

-- Q24. Departments having minimum salary less than 1000
SELECT deptno, MIN(sal)
FROM emp
GROUP BY deptno
HAVING MIN(sal) < 1000;

-- Q25. Managers having total salary greater than 25000
SELECT mgr, SUM(sal)
FROM emp
GROUP BY mgr
HAVING SUM(sal) > 25000;

-- Q26. Managers having average salary greater than 4000
SELECT mgr, AVG(sal)
FROM emp
GROUP BY mgr
HAVING AVG(sal) > 4000;