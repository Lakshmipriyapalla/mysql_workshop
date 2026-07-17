-- ==========================================
-- ALIAS PRACTICE QUERIES
-- ==========================================

-- 1. Display employee name with alias
SELECT ename AS Employee_Name
FROM emp;

-- 2. Display salary with alias
SELECT sal AS Salary
FROM emp;

-- 3. Display employee name and job with aliases
SELECT ename AS Employee_Name,
       job AS Designation
FROM emp;

-- 4. Display employee number, employee name and department number with aliases
SELECT eno AS Employee_Number,
       ename AS Employee_Name,
       deptno AS Department_Number
FROM emp;

-- 5. Display employee name and monthly salary
SELECT ename,
       sal AS Monthly_Salary
FROM emp;

-- 6. Display annual salary
SELECT sal * 12 AS Annual_Salary
FROM emp;

-- 7. Display employee name, salary and incremented salary
SELECT ename,
       sal,
       sal + 1000 AS Incremented_Salary
FROM emp;

-- 8. Display employee name, job and annual salary
SELECT ename,
       job,
       sal * 12 AS Annual_Salary
FROM emp;

-- 9. Display employee name, job, monthly salary and annual salary
SELECT ename AS Employee_Name,
       job AS Designation,
       sal AS Monthly_Salary,
       sal * 12 AS Annual_Salary
FROM emp;