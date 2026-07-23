-- ==========================================
-- ORDER BY USING COLUMN POSITION
-- ==========================================
use amazon_db;
select * from emp;
-- 1. Display employee name, job, and salary sorted by the 3rd selected column in ascending order.

SELECT ename, job, sal
FROM emp
ORDER BY 3 ASC;

-- ==========================================

-- 2. Display employee name, department number, and salary sorted by the 2nd selected column in descending order.

SELECT ename, deptno, sal
FROM emp
ORDER BY 2 DESC;

-- ==========================================

-- 3. Display employee number, employee name, and job sorted by the 1st selected column in descending order.

SELECT eno, ename, job
FROM emp
ORDER BY 1 DESC;

-- ==========================================

-- 4. Display employee name, salary, and department number sorted by the 2nd selected column in descending order.

SELECT ename, sal, deptno
FROM emp
ORDER BY 2 DESC;

-- ==========================================

-- 5. Display employee name, job, department number, and salary sorted by the 4th selected column in ascending order.

SELECT ename, job, deptno, sal
FROM emp
ORDER BY 4 ASC;

-- ==========================================

-- 6. Display employee number, employee name, salary, and job sorted by the 3rd selected column in descending order.

SELECT eno, ename, sal, job
FROM emp
ORDER BY 3 DESC;

-- ==========================================

-- 7. Display employee name, salary, and job sorted by the 2nd selected column in ascending order.

SELECT ename, sal, job
FROM emp
ORDER BY 2 ASC;

-- 8. Display department number, employee name, and salary sorted by the 1st selected column in ascending order and the 3rd selected column in descending order.

SELECT deptno, ename, sal
FROM emp
ORDER BY 1 ASC, 3 DESC;

-- ==========================================

-- 9. Display employee name, hire date, and salary sorted by the 2nd selected column in ascending order.

SELECT ename, hire_date, sal
FROM emp
ORDER BY 2 ASC;

-- 10. Display employee number, employee name, department number, and salary sorted by the 4th selected column in descending order and the 2nd selected column in ascending order.

SELECT eno, ename, deptno, sal
FROM emp
ORDER BY 4 DESC, 2 ASC;