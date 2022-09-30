CODE:
create database final
use final
create table trainlistt(trainnumber int,primary key (trainnumber),ticketid int unique, trainname varchar(45),sourcee varchar(45),destination varchar(45),fairac int,fairgeneral int,weekdays int)
create table trainstatuses(trainid int,primary key(trainid), traindate int, acseats int, generalseats int,bookedacseats int, bookedgeneralseats int)
create table passengers(tickerid int,primary key(tickerid),number int, date int,namee varchar(45),age int)
create table booking(tc int ,foreign key (tc) references passengers(tickerid),datee int, tr int ,foreign key (tr) references trainstatuses(trainid))
create table statusoff(tn int,foreign key (tn) references trainlistt(trainnumber),ti int ,foreign key (ti) references trainstatuses(trainid))
insert into trainlistt values(01,03,'A','B','C',100,50,3)
insert into trainstatuses values(100,03,3,4,5,100)
insert into trainstatuses values(8,03,3,4,5,100)
insert into trainstatuses values(9,03,3,4,5,100)
insert into statusoff values(01,100)
insert into passengers values(9,100,40,'A',45)
insert into booking values(9,33)
select * from passengers
select * from booking
select * from trainlistt
select * from trainstatuses
select * from statusoff



select max(acseats) from trainstatuses;
select trainname from trainlistt
  where destination ='C';
select * from trainlistt
  where destination = 'c' AND sourcee ='B' ;

  select tickerid,namee from passengers
  where date = 40;
  select * from passengers
  where tickerid = 9;




