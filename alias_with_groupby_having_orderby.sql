-- ==========================================
-- ALIAS WITH GROUP BY, HAVING & ORDER BY
-- ==========================================

-- 1. Department-wise employee count
SELECT deptno AS Department_Number,
       COUNT(*) AS Employee_Count
FROM emp
GROUP BY deptno;

-- 2. Job-wise employee count (Descending)
SELECT job AS Designation,
       COUNT(*) AS Employee_Count
FROM emp
GROUP BY job
ORDER BY Employee_Count DESC;

-- 3. Department-wise average salary greater than 3000
SELECT deptno AS Department_Number,
       AVG(sal) AS Average_Salary
FROM emp
GROUP BY deptno
HAVING AVG(sal) > 3000
ORDER BY Average_Salary DESC;

-- 4. Job-wise maximum salary
SELECT job AS Designation,
       MAX(sal) AS Highest_Salary
FROM emp
GROUP BY job
ORDER BY Highest_Salary DESC;

-- 5. Department-wise total salary
SELECT deptno AS Department_Number,
       SUM(sal) AS Total_Salary
FROM emp
GROUP BY deptno
ORDER BY Total_Salary DESC;

-- 6. Jobs having more than 2 employees
SELECT job AS Designation,
       COUNT(*) AS Employee_Count
FROM emp
GROUP BY job
HAVING COUNT(*) > 2
ORDER BY Employee_Count DESC;

-- 7. Departments having average salary greater than 2500
SELECT deptno AS Department_Number,
       AVG(sal) AS Average_Salary
FROM emp
GROUP BY deptno
HAVING AVG(sal) > 2500
ORDER BY Average_Salary DESC;

-- 8. Department-wise employee count, highest salary and lowest salary
SELECT deptno AS Department_Number,
       COUNT(*) AS Employee_Count,
       MAX(sal) AS Highest_Salary,
       MIN(sal) AS Lowest_Salary
FROM emp
GROUP BY deptno
ORDER BY Highest_Salary DESC;

-- 9. Job-wise employee count, total salary and average salary
SELECT job AS Designation,
       COUNT(*) AS Employee_Count,
       SUM(sal) AS Total_Salary,
       AVG(sal) AS Average_Salary
FROM emp
GROUP BY job
HAVING AVG(sal) > 2500
ORDER BY Average_Salary DESC;