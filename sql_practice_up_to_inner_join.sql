-- =========================================
-- SQL PRACTICE - BASICS TO INNER JOIN
-- =========================================


-- 1. CREATE TABLE

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);


-- 2. INSERT DATA

INSERT INTO employees VALUES
(101, 'Ravi', 1, 30000),
(102, 'Priya', 2, 35000),
(103, 'Sita', 1, 40000),
(104, 'Arun', 3, 28000),
(105, 'Kiran', 5, 32000);


-- 3. CREATE DEPARTMENTS TABLE

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- 4. INSERT DEPARTMENT DATA

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Sales'),
(4, 'Finance');


-- =========================================
-- SELECT / WHERE
-- =========================================

-- Display employees whose salary is greater than 30000

SELECT *
FROM employees
WHERE salary > 30000;


-- Display employees from department 1 or 2

SELECT *
FROM employees
WHERE dept_id = 1 OR dept_id = 2;


-- Display employees whose salary is between 30000 and 40000

SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 40000;


-- Display employees whose name starts with S

SELECT *
FROM employees
WHERE emp_name LIKE 'S%';


-- Display employees whose department is not 1

SELECT *
FROM employees
WHERE dept_id != 1;


-- =========================================
-- AND / OR
-- =========================================

SELECT *
FROM employees
WHERE salary > 30000 AND dept_id = 1;


SELECT *
FROM employees
WHERE dept_id = 1 OR dept_id = 2;


-- =========================================
-- IN / NOT IN
-- =========================================

SELECT *
FROM employees
WHERE dept_id IN (1, 2, 3);


SELECT *
FROM employees
WHERE dept_id NOT IN (1, 2);


-- =========================================
-- BETWEEN / NOT BETWEEN
-- =========================================

SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 40000;


SELECT *
FROM employees
WHERE salary NOT BETWEEN 30000 AND 40000;


-- =========================================
-- LIKE / NOT LIKE
-- =========================================

SELECT *
FROM employees
WHERE emp_name LIKE 'S%';


SELECT *
FROM employees
WHERE emp_name LIKE '%a';


SELECT *
FROM employees
WHERE emp_name LIKE '%i%';


SELECT *
FROM employees
WHERE emp_name NOT LIKE 'S%';


-- =========================================
-- IS NULL / IS NOT NULL
-- =========================================

SELECT *
FROM employees
WHERE dept_id IS NULL;


SELECT *
FROM employees
WHERE dept_id IS NOT NULL;


-- =========================================
-- AGGREGATE FUNCTIONS
-- =========================================

-- Count employees

SELECT COUNT(*)
FROM employees;


-- Total salary

SELECT SUM(salary)
FROM employees;


-- Average salary

SELECT AVG(salary)
FROM employees;


-- Maximum salary

SELECT MAX(salary)
FROM employees;


-- Minimum salary

SELECT MIN(salary)
FROM employees;


-- =========================================
-- GROUP BY
-- =========================================

-- Number of employees in each department

SELECT dept_id, COUNT(*)
FROM employees
GROUP BY dept_id;


-- Average salary in each department

SELECT dept_id, AVG(salary)
FROM employees
GROUP BY dept_id;


-- Highest salary in each department

SELECT dept_id, MAX(salary)
FROM employees
GROUP BY dept_id;


-- Minimum salary in each department

SELECT dept_id, MIN(salary)
FROM employees
GROUP BY dept_id;


-- Total salary in each department

SELECT dept_id, SUM(salary)
FROM employees
GROUP BY dept_id;


-- =========================================
-- HAVING
-- =========================================

-- Departments having more than 1 employee

SELECT dept_id, COUNT(*)
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 1;


-- Departments whose average salary is greater than 30000

SELECT dept_id, AVG(salary)
FROM employees
GROUP BY dept_id
HAVING AVG(salary) > 30000;


-- =========================================
-- ORDER BY
-- =========================================

-- Sort salary from highest to lowest

SELECT *
FROM employees
ORDER BY salary DESC;


-- Sort salary from lowest to highest

SELECT *
FROM employees
ORDER BY salary ASC;


-- Department-wise total salary, highest first

SELECT dept_id, SUM(salary)
FROM employees
GROUP BY dept_id
ORDER BY SUM(salary) DESC;


-- =========================================
-- INNER JOIN
-- =========================================

-- Employee name and department name

SELECT emp_name, dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id;


-- Employee name, salary and department name

SELECT emp_name, salary, dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id;


-- Employees with salary greater than 30000
-- along with department name

SELECT emp_name, dept_name, salary
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
WHERE salary > 30000;


-- Employees with salary less than 35000
-- along with department name

SELECT emp_name, dept_name, salary
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
WHERE salary < 35000;


-- Employees whose salary is between 30000 and 40000
-- along with department name

SELECT emp_name, dept_name, salary
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
WHERE salary BETWEEN 30000 AND 40000;


-- Employees whose salary is NOT between 30000 and 40000

SELECT emp_name, salary, dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
WHERE salary NOT BETWEEN 30000 AND 40000;


-- Employee names containing letter i

SELECT emp_name, dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
WHERE emp_name LIKE '%i%';


-- Employee names starting with P or S

SELECT emp_name, dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
WHERE emp_name LIKE 'P%'
   OR emp_name LIKE 'S%';


-- Employee names starting with R or K

SELECT emp_name, dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
WHERE emp_name LIKE 'R%'
   OR emp_name LIKE 'K%';


-- =========================================
-- INNER JOIN + GROUP BY
-- =========================================

-- Number of employees in each department

SELECT dept_name, COUNT(*)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name;


-- Average salary of each department

SELECT dept_name, AVG(salary)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name;


-- Highest salary in each department

SELECT dept_name, MAX(salary)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name;


-- Minimum salary in each department

SELECT dept_name, MIN(salary)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name;


-- Total salary of each department

SELECT dept_name, SUM(salary)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name;


-- =========================================
-- INNER JOIN + GROUP BY + HAVING
-- =========================================

-- Departments having at least 2 employees

SELECT dept_name, COUNT(*)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name
HAVING COUNT(*) >= 2;


-- Departments whose average salary is less than 35000

SELECT dept_name, AVG(salary)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name
HAVING AVG(salary) < 35000;


-- Departments whose average salary is greater than 30000

SELECT dept_name, AVG(salary)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name
HAVING AVG(salary) > 30000;


-- Departments whose minimum salary is greater than 28000

SELECT dept_name, MIN(salary)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name
HAVING MIN(salary) > 28000;


-- Departments whose total salary is greater than 60000

SELECT dept_name, SUM(salary)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name
HAVING SUM(salary) > 60000;


-- =========================================
-- INNER JOIN + GROUP BY + HAVING + ORDER BY
-- =========================================

-- Department-wise employee count,
-- highest count first

SELECT dept_name, COUNT(*)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name
ORDER BY COUNT(*) DESC;


-- Department-wise total salary,
-- highest total salary first

SELECT dept_name, SUM(salary)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name
ORDER BY SUM(salary) DESC;


-- Departments with total salary greater than 60000,
-- highest total salary first

SELECT dept_name, SUM(salary)
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
GROUP BY dept_name
HAVING SUM(salary) > 60000
ORDER BY SUM(salary) DESC;