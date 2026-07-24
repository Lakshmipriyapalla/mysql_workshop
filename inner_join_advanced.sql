select * from department;
select * from employee;
-- Q1. Display employee name and department name.
SELECT e.ename, d.dname
FROM employee e
JOIN department d
ON e.deptno = d.deptno;

-- Q2. Display employee name, department number and location.
SELECT e.ename, e.deptno, d.loc
FROM employee e
JOIN department d
ON e.deptno = d.deptno;

-- Q3. Display employee number, employee name, job and department name.
SELECT e.eno, e.ename, e.job, d.dname
FROM employee e
JOIN department d
ON e.deptno = d.deptno;

-- Q4. Display employee number, employee name, salary and department location.
SELECT e.eno, e.ename, e.sal, d.loc
FROM employee e
JOIN department d
ON e.deptno = d.deptno;


-- Q5. Display employee name, job, department name and location.
SELECT e.ename, e.job, d.dname, d.loc
FROM employee e
JOIN department d
ON e.deptno = d.deptno;

-- Q6. Display all employee details along with department location.
SELECT e.*, d.loc
FROM employee e
JOIN department d
ON e.deptno = d.deptno;

-- Q7. Display employee names who work in the IT department.
SELECT e.ename
FROM employee e
JOIN department d
ON e.deptno = d.deptno
WHERE d.dname = 'IT';

-- Q8. Display employee names who work in the Sales department.
SELECT e.ename
FROM employee e
JOIN department d
ON e.deptno = d.deptno
WHERE d.dname = 'Sales';

-- Q9. Display employee names who work in Hyderabad.
SELECT e.ename
FROM employee e
JOIN department d
ON e.deptno = d.deptno
WHERE d.loc = 'Hyderabad';

-- Q10. Display employee name, salary and department name of Clerks.
SELECT e.ename, e.sal, d.dname
FROM employee e
JOIN department d
ON e.deptno = d.deptno
WHERE e.job = 'Clerk';

-- Q11. Display employee name, department name and salary of employees whose salary is greater than 30000.
SELECT e.ename, d.dname, e.sal
FROM employee e
JOIN department d
ON e.deptno = d.deptno
WHERE e.sal > 30000;

-- Q12. Display department name and number of employees in each department.
SELECT d.dname, COUNT(*) AS employee_count
FROM employee e
JOIN department d
ON e.deptno = d.deptno
GROUP BY d.dname;

-- Q13. Display department names where more than one employee is working.
SELECT d.dname
FROM employee e
JOIN department d
ON e.deptno = d.deptno
GROUP BY d.dname
HAVING COUNT(*) > 1;

-- Q14. Display department names where exactly one employee is working.
SELECT d.dname
FROM employee e
JOIN department d
ON e.deptno = d.deptno
GROUP BY d.dname
HAVING COUNT(*) = 1;

-- Q15. Display department names where employee count is less than 2.
SELECT d.dname
FROM employee e
JOIN department d
ON e.deptno = d.deptno
GROUP BY d.dname
HAVING COUNT(*) < 2;

-- Q16. Display department names and total salary of employees in each department.
SELECT d.dname, SUM(e.sal) AS total_salary
FROM employee e
JOIN department d
ON e.deptno = d.deptno
GROUP BY d.dname;

-- Q17. Display department names where the total salary is greater than 40000.
SELECT d.dname
FROM employee e
JOIN department d
ON e.deptno = d.deptno
GROUP BY d.dname
HAVING SUM(e.sal) > 40000;