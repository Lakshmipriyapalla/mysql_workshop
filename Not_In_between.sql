select * from emp;
-- Employees not in dept 10 and 20.
select * from emp 
where deptno not in(10,20);
-- Employees not working as CLERK and MANAGER.
select * from emp where job  not in ('clerk','manager');
-- Employees whose job is not ANALYST, SALESMAN, CLERK
select * from emp where job not in('analyst','salesman','clerk');
-- Employees whose manager eno is not 4 and 2.
select * from emp 
where eno not in (4,2);
-- Employees working as ANALYST or MANAGER, but not in dept 10.
select job from emp 
where job in('analyst','manager') and deptno not in(10);
--  Employees in dept 20 or 30, but not working as SALESMAN.
select * from emp where deptno in(20,30) and job not in('salesman');
-- Employees not working as CLERK, and in dept 20 or 30.
select * from emp 
where job not in('clerk') and deptno in(20,30);
select * from products;
-- Display products whose price is between 20000 and 60000.
select products from products where price > 20000 and price <60000;
-- Display products whose selling_price is between 50000 and 60000.
select* from products
 where selling_price between 50000 and 60000;
-- Display products whose rating is between 3 and 5
select * from products
 where rating between 3 and 5;
-- Display product IDs between 5 and 10.
select * from products 
where product_id between 5 and 10;
-- Count products whose price is between 20000 and 60000.
select count(*) from products 
where price between 20000 and 60000;

