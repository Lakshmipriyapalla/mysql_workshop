-- INNER JOIN PRACTICE

-- Q1. Display employee names along with their department names.
SELECT employee.ename, department.dname
FROM employee
INNER JOIN department
ON employee.deptno = department.deptno;


-- Q2. Display employee name, job, and department location.
SELECT employee.ename, employee.job, department.loc
FROM employee
INNER JOIN department
ON employee.deptno = department.deptno;


-- Q3. Display employees who earn more than 30000.
SELECT employee.ename, employee.sal, department.dname
FROM employee
INNER JOIN department
ON employee.deptno = department.deptno
WHERE employee.sal > 30000;


-- Q4. Display details of employees who work in the IT department.
SELECT employee.ename, employee.job, department.dname, department.loc
FROM employee
INNER JOIN department
ON employee.deptno = department.deptno
WHERE department.dname = 'IT';


-- Q5. Display employees who work in either HR or Finance department.
SELECT employee.ename, employee.sal, department.dname, department.loc
FROM department
INNER JOIN employee
ON department.deptno= employee.deptno
WHERE department.dname = 'HR'
   OR department.dname = 'Finance';


-- Q6. Find the number of employees in each department.
SELECT department.dname, COUNT(*)
FROM employee
INNER JOIN department
ON employee.deptno = department.deptno
GROUP BY department.dname;


-- Q7. Find the average salary of employees in each department.
SELECT department.dname, AVG(employee.sal)
FROM employee
INNER JOIN department
ON employee.deptno = department.deptno
GROUP BY department.dname;


-- Q8. Find the maximum salary in each department.
SELECT department.dname, MAX(employee.sal)
FROM employee
INNER JOIN department
ON employee.deptno = department.deptno
GROUP BY department.dname;


-- Q9. Display employee names, salaries, and department names,
-- sorted by salary in descending order.
SELECT employee.ename, employee.sal, department.dname
FROM employee
INNER JOIN department
ON employee.deptno = department.deptno
ORDER BY employee.sal DESC;


-- Q10. Display employee names, jobs, and department names,
-- sorted by employee name in ascending order.
SELECT employee.ename, employee.job, department.dname
FROM employee
INNER JOIN department
ON employee.deptno = department.deptno
ORDER BY employee.ename ASC;


-- Q11. Find the total salary of employees in each department
-- and sort by total salary in descending order.
SELECT department.dname, SUM(employee.sal)
FROM employee
INNER JOIN department
ON employee.deptno = department.deptno
GROUP BY department.dname
ORDER BY SUM(employee.sal) DESC;


-- Q12. Find the number of employees in each department
-- and sort by employee count in descending order.
SELECT department.dname, COUNT(*)
FROM department
INNER JOIN employee
ON department.deptno = employee.deptno
GROUP BY department.dname
ORDER BY COUNT(*) DESC;