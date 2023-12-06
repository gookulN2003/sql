create database Books;

use books;
drop database Books;
create table boo(
   se_no int primary key,
   title text,
   author text,
   gener text,
   years int,
   price int);
   
INSERT INTO  boo VALUES(1,"cindrella","gokul","heroism  ",1990,450);

INSERT INTO   boo VALUES(2,"zombie", "Bala" ," romance " ,1850,200);

INSERT INTO boo VALUES(3,"Life of Pie","ARasu ","maths",1780,340);

INSERT INTO boo VALUES(4,"life of lord","sharu","cute",1950,2000);

INSERT INTO boo VALUES(5,"tour","kalai","pure soul",2023,100);

SELECT * FROM  boo;

SELECT * from boo
where title="tour";

update boo
set price=10
where price=100;

SELECT * FROM  boo;

delete from boo
where title="tour";

SELECT * FROM  boo;

create table auth(
ser_no int primary key,
  age int,
  native varchar(55),
  namess varchar(22),
  s_no int,
  constraint fk_s_no foreign key(s_no) references boo(se_no) );
  
  
INSERT INTO  auth  VALUES(1,24,"salem","ragu",5);

INSERT INTO   auth VALUES(2,25,"nammkal","bala",2);

INSERT INTO auth VALUES(3,27,"india","mani ",1);

INSERT INTO auth VALUES(4,28,"bhum","sharu",4);

  SELECT * FROM auth;
  
  select boo.author,auth.namess from boo
  inner join auth
  on boo.se_no=auth.s_no;
  
