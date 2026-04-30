select * from users;
select * from users where email='lakshmi@gmail.com';
select * from users where email in('teja@gmail.com', 'radha@gmail.com');
select phno from users where userid in(3, 4);
select * from users where  userid in(1,2);
select * from users where userid not in(3);
select * from users where name='pandu' and pwd='mnbvc';
insert into users(name,email,phno,pwd,location) 
values('priya','priya@gmail.com','6789023421','fgkjh','adk');