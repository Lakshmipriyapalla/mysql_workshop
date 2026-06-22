create table emp(eno int primary key , ename varchar(10) not null ,
 job varchar(10) not null , deptno int );
 insert into emp
 values(1,'A','clerk',10),
 (2,'B','manager',20),
 (3,'C','salesman',30),
 (4,'D','president',30),
 (5,'E','analyst',40),
 (6,'F','clerk',50);
 select * from emp;
--WAQTD the name of the emp who are hired after the year 81 in deptno=10;--
select ename
 from emp
 where hire_date >1981-12-31 and deptno=10;
 alter table emp
 add hire_date date;
 update emp
 set hire_date='1982-01-01'
 where eno=1;
 update emp
 set hire_date=
 case eno 
 when 2 then '1981-02-03'
 when 3 then '1985-05-06'
 when 4 then '1980-03-07'
 when 5 then '1983-06-09'
 when 6 then '1981-01-01'
 end 
 where eno in(2,3,4,5,6);
 