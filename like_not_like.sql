select * from emp;
update emp
set ename=case
when eno=1 then "priya"
when eno=2 then "lakhsmi"
when eno=3 then "teja"
when eno=4 then  "radha"
when eno=5 then "pandu"
when eno=6 then "palla"
end where eno in(1,2,3,4,5,6);
-- Display the details of employees whose names start with 'p'.
select * from emp
 where ename like 'p%';
-- Display the details of employees whose names end with 'a'.
select * from emp where ename like '%a';
-- Display the details of employees whose names contain 'a'.
select * from emp
where ename like '%a%';
-- Display the employee names whose names start with 'l'.
select * from emp where ename like 'i%';
-- Display the details of employees whose names end with 'i'.
select * from emp 
where ename like '%i';
-- Display the details of employees whose names contain 'dh'.
select * from emp where ename like '%dh%';
-- Display the details of employees whose names start with 'pa'.
select * from emp where ename like 'pa%';
-- Display the details of employees whose first character is 'p' and last character is 'a'.
select * from emp where ename like  'p%a';
-- Display the details of employees whose second character is 'a'.
select * from emp where ename like '_a%';
-- Display the details of employees whose job starts with 'c'.
select * from emp where job like 'c%';
-- Display the details of employees whose job contains 'man'.
select * from emp where job like '%man%';
-- Display the details of employees whose names start with 'p' and whose job starts with 'c'.
select * from emp where ename like 'p%' and job like 'c%';
-- Display the details of employees whose names contain 'a' and whose salary is NOT NULL.
select * from emp where ename like '%a%' and sal is not null;
-- Display the details of employees hired in the year 1981.
select * from emp where hire_date like '1981-01-01';
-- Display the details of employees hired on the 1st day of any month.
select * from emp where hire_date like '1981-12-01';
--- not like---
-- Display the details of employees whose names do not end with 'a'.
select * from emp where ename not like 'a%';
-- Display the details of employees whose second character is not 'a'.
select * from emp where ename not like '_a%';
-- Display the details of employees whose names do not start with 'p'.
select * from emp where ename not like 'p%';