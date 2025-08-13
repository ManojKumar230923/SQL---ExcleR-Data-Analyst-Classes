#21-07-2025-SQL_Class01 (Basic Table Creation)
show databases;
create database practicedb;
use practicedb;
create table students ( id int, sname char(30) , age int, course char(30) );
show tables;
insert into students values (1,"Siri",24,"DA");
insert into students values (2,"Harry",23,"SQL");
select * from students;
-- blue_colour-keywords

#22-07-2025-SQL_Class02( Different Datatype insertions)
use practicedb;
create table patients ( pid int, pname varchar (30), DOB date, TOA datetime);
show tables;
describe patients;
insert into patients values ( 1, "Manoj" , "2003-09-23", "2003-09-23 10:09:23");
select * from patients ;
insert into patients values (2, "Kuamr" , "2003-04-24", now());
-- present time can be add with now() 
insert into patients values ( 1, "vijay" , "2003-09-23", "2004-09-23 10:09:23");
-- datetime must be in strings values itself
select * from patients;
select pname, DOB, monthname(DOB) from patients;
-- To specify particular column use < coulumnname(columnheading) >


#23-07-2025-SQL_Class03(Types of Commands )
-- DDL Commands
use practicedb;
desc students;
alter table students add column marks int;
alter table students drop column age;
alter table students modify column sname varchar(30);
alter table students change id sid int;
alter table students rename to Mystudents;
-- rename is subclause and we can also make it main clause
desc Mystudents;
-- making subclauses into mainclause
rename table Mystudents to students;
drop table patients;
-- truncate just removes data in table not table
create table sample (id int, sname varchar(30));
insert into sample values(1,"harry");
select * from sample;
truncate table sample;
-- DML commands
select * from students;


-- for particular column insertion of values , useful for inserting null values
insert into students (sid,sname,marks) values (3,"john",85),(2,"lisa",32);
insert into students values(5,null,"sql",90),(6,"john","DA",87);
-- update
-- to turn sql safe mode
set sql_safe_updates=0;
update students set sname="johnson" where sid=6;
select * from students;

#24-07-2025-SQL_Class03( )
use practicedb;
set sql_safe_updates=0;
update students set marks = 0 where marks is null;
select * from students;
update students set sname = "ram" where course ="MysqL" and marks = 89;
update students set course = " Mysql", marks = 89 where sid=3;
-- delete command
delete from students where sid=2;
delete from students;
-- in TCL we can retrieve back deleted commands

-- DQL Commands
-- Select
DROP TABLE IF EXISTS `books`;
DROP TABLE IF EXISTS `authors`;
CREATE TABLE Authors(AuthorId INTEGER primary key, Name VARCHAR(70));

insert into Authors values(1,'J K Rowling');
insert into Authors values(2,'Thomas Hardy');
insert into Authors values(3,'Oscar Wilde');
insert into Authors values(4,'Sidney Sheldon');
insert into Authors values(5,'Alistair MacLean');
insert into Authors values(6,'Jane Austen');
insert into Authors values(7,'Chetan Bhagat');
insert into Authors values(8,'Oscar Wilde');

select * from Authors;

CREATE TABLE `myemp` (
  `EMP_ID` decimal(6,0) NOT NULL DEFAULT 0,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MGR_ID` decimal(6,0) DEFAULT NULL,
  `DEP_ID` decimal(4,0) DEFAULT NULL
) ;

INSERT INTO `myemp` VALUES (100,'Steven','King','SKING','1998-06-17','AD_PRES',24000.00,0.00,0,90),
(101,'Neena','Kochhar','NKOCHHAR','1987-06-18','AD_VP',17000.00,0.00,100,90),
(102,'Lex','De Haan','LDEHAAN','1987-06-19','AD_VP',17000.00,0.00,100,90),
(103,'Alexander','Hunold','AHUNOLD','1976-06-20','IT_PROG',9000.00,0.00,102,60),
(104,'Bruce','Ernst','BERNST','1987-06-21','IT_PROG',6000.00,0.00,103,60),
(105,'David','Austin','DAUSTIN','1987-06-22','IT_PROG',4800.00,0.00,103,60),
(106,'Valli','Pataballa','VPATABAL','1980-06-23','IT_PROG',4800.00,0.00,103,60),
(107,'Diana','Lorentz','DLORENTZ','1987-06-24','IT_PROG',4200.00,0.00,103,60),
(108,'Nancy','Greenberg','NGREENBE','1987-06-25','FI_MGR',12000.00,0.00,101,100),
(109,'Daniel','Faviet','DFAVIET','1992-06-26','FI_ACCOUNT',9000.00,0.00,108,100),
(110,'John','Chen','JCHEN','1987-06-27','FI_ACCOUNT',8200.00,0.00,108,100),
(111,'Ismael','Sciarra','ISCIARRA','1987-06-28','FI_ACCOUNT',7700.00,0.00,108,100),
(112,'Jose Manuel','Urman','JMURMAN','1981-06-29','FI_ACCOUNT',7800.00,0.00,108,100),
(113,'Luis','Popp','LPOPP','1987-06-30','FI_ACCOUNT',6900.00,0.00,108,100),
(114,'Den','Raphaely','DRAPHEAL','1987-07-01','PU_MAN',11000.00,0.00,100,30),
(115,'Alexander','Khoo','AKHOO','1983-07-02','PU_CLERK',3100.00,0.00,114,30),
(116,'Shelli','Baida','SBAIDA','1987-07-03','PU_CLERK',2900.00,0.00,114,30),
(117,'Sigal','Tobias','STOBIAS','1987-07-04','PU_CLERK',2800.00,0.00,114,30),
(118,'Guy','Himuro','GHIMURO','1995-07-05','PU_CLERK',2600.00,0.00,114,30),
(119,'Karen','Colmenares','KCOLMENA','1987-07-06','PU_CLERK',2500.00,0.00,114,30),
(120,'Matthew','Weiss','MWEISS','1987-07-07','ST_MAN',8000.00,0.00,100,50),
(121,'Adam','Fripp','AFRIPP','1990-07-08','ST_MAN',8200.00,0.00,100,50),
(122,'Payam','Kaufling','PKAUFLIN','1987-07-09','ST_MAN',7900.00,0.00,100,50),
(123,'Shanta','Vollman','SVOLLMAN','1987-07-10','ST_MAN',6500.00,0.00,100,50),
(124,'Kevin','Mourgos','KMOURGOS','1997-07-11','ST_MAN',5800.00,0.00,100,50),
(125,'Julia','Nayer','JNAYER','1987-07-12','ST_CLERK',3200.00,0.00,120,50),
(126,'Irene','Mikkilineni','IMIKKILI','1987-07-13','ST_CLERK',2700.00,0.00,120,50),
(127,'James','Landry','JLANDRY','1978-07-14','ST_CLERK',2400.00,0.00,120,50),
(128,'Steven','Markle','SMARKLE','1987-07-15','ST_CLERK',2200.00,0.00,120,50),
(129,'Laura','Bissot','LBISSOT','1987-07-16','ST_CLERK',3300.00,0.00,121,50),
(130,'Mozhe','Atkinson','MATKINSO','1983-07-17','ST_CLERK',2800.00,0.00,121,50),
(131,'James','Marlow','JAMRLOW','1987-07-18','ST_CLERK',2500.00,0.00,121,50),
(132,'TJ','Olson','TJOLSON','1987-07-19','ST_CLERK',2100.00,0.00,121,50),
(133,'Jason','Mallin','JMALLIN','1985-07-20','ST_CLERK',3300.00,0.00,122,50),
(134,'Michael','Rogers','MROGERS','1987-07-21','ST_CLERK',2900.00,0.00,122,50),
(135,'Ki','Gee','KGEE','1987-07-22','ST_CLERK',2400.00,0.00,122,50),
(136,'Hazel','Philtanker','HPHILTAN','1990-07-23','ST_CLERK',2200.00,0.00,122,50),
(137,'Renske','Ladwig','RLADWIG','2000-07-24','ST_CLERK',3600.00,0.00,123,50),
(138,'Stephen','Stiles','SSTILES','1987-07-25','ST_CLERK',3200.00,0.00,123,50),
(139,'John','Seo','JSEO','1989-07-26','ST_CLERK',2700.00,0.00,123,50),
(140,'Joshua','Patel','JPATEL','2011-07-27','ST_CLERK',2500.00,0.00,123,50),
(141,'Trenna','Rajs','TRAJS','1987-07-28','ST_CLERK',3500.00,0.00,124,50),
(142,'Curtis','Davies','CDAVIES','1986-07-29','ST_CLERK',3100.00,0.00,124,50),
(143,'Randall','Matos','RMATOS','1987-07-30','ST_CLERK',2600.00,0.00,124,50),
(144,'Peter','Vargas','PVARGAS','1998-07-31','ST_CLERK',2500.00,0.00,124,50),
(145,'John','Russell','JRUSSEL','1991-08-01','SA_MAN',14000.00,0.40,100,80),
(146,'Karen','Partners','KPARTNER','2019-08-02','SA_MAN',13500.00,0.30,100,80),
(147,'Alberto','Errazuriz','AERRAZUR','1987-08-03','SA_MAN',12000.00,0.30,100,80),
(148,'Gerald','Cambrault','GCAMBRAU','2015-08-04','SA_MAN',11000.00,0.30,100,80),
(149,'Eleni','Zlotkey','EZLOTKEY','1987-08-05','SA_MAN',10500.00,0.20,100,80),
(150,'Peter','Tucker','PTUCKER','1987-08-06','SA_REP',10000.00,0.30,145,80),
(151,'David','Bernstein','DBERNSTE','2013-08-07','SA_REP',9500.00,0.25,145,80),
(152,'Peter','Hall','PHALL','1987-08-08','SA_REP',9000.00,0.25,145,80),
(153,'Christopher','Olsen','COLSEN','1987-08-09','SA_REP',8000.00,0.20,145,80),
(154,'Nanette','Cambrault','NCAMBRAU','1987-08-10','SA_REP',7500.00,0.20,145,80),
(155,'Oliver','Tuvault','OTUVAULT','1987-08-11','SA_REP',7000.00,0.15,145,80),
(156,'Janette','King','JKING','1987-08-12','SA_REP',10000.00,0.35,146,80),
(157,'Patrick','Sully','PSULLY','2002-08-13','SA_REP',9500.00,0.35,146,80),
(158,'Allan','McEwen','AMCEWEN','1987-08-14','SA_REP',9000.00,0.35,146,80),
(159,'Lindsey','Smith','LSMITH','1987-08-15','SA_REP',8000.00,0.30,146,80),
(160,'Louise','Doran','LDORAN','2003-08-16','SA_REP',7500.00,0.30,146,80),
(161,'Sarath','Sewall','SSEWALL','1987-08-17','SA_REP',7000.00,0.25,146,80),
(162,'Clara','Vishney','CVISHNEY','1987-08-18','SA_REP',10500.00,0.25,147,80),
(163,'Danielle','Greene','DGREENE','1987-08-19','SA_REP',9500.00,0.15,147,80),
(164,'Mattea','Marvins','MMARVINS','2007-08-20','SA_REP',7200.00,0.10,147,80),
(165,'David','Lee','DLEE','1987-08-21','SA_REP',6800.00,0.10,147,80),
(166,'Sundar','Ande','SANDE','1987-08-22','SA_REP',6400.00,0.10,147,80),
(167,'Amit','Banda','ABANDA','1987-08-23','SA_REP',6200.00,0.10,147,80),
(168,'Lisa','Ozer','LOZER','1987-08-24','SA_REP',11500.00,0.25,148,80),
(169,'Harrison','Bloom','HBLOOM','1999-08-25','SA_REP',10000.00,0.20,148,80),
(170,'Tayler','Fox','TFOX','1987-08-26','SA_REP',9600.00,0.20,148,80),
(171,'William','Smith','WSMITH','1987-08-27','SA_REP',7400.00,0.15,148,80),
(172,'Elizabeth','Bates','EBATES','1987-08-28','SA_REP',7300.00,0.15,148,80),
(173,'Sundita','Kumar','SKUMAR','1987-08-29','SA_REP',6100.00,0.10,148,80),
(174,'Ellen','Abel','EABEL','1987-08-30','SA_REP',11000.00,0.30,149,80),
(175,'Alyssa','Hutton','AHUTTON','1996-08-31','SA_REP',8800.00,0.25,149,80),
(176,'Jonathon','Taylor','JTAYLOR','1987-09-01','SA_REP',8600.00,0.20,149,80),
(177,'Jack','Livingston','JLIVINGS','1987-09-02','SA_REP',8400.00,0.20,149,80),
(179,'Charles','Johnson','CJOHNSON','1999-09-04','SA_REP',6200.00,0.10,149,80),
(180,'Winston','Taylor','WTAYLOR','1987-09-05','SH_CLERK',3200.00,0.00,120,50),
(181,'Jean','Fleaur','JFLEAUR','1987-09-06','SH_CLERK',3100.00,0.00,120,50),
(182,'Martha','Sullivan','MSULLIVA','1987-09-07','SH_CLERK',2500.00,0.00,120,50),
(183,'Girard','Geoni','GGEONI','1987-09-08','SH_CLERK',2800.00,0.00,120,50),
(184,'Nandita','Sarchand','NSARCHAN','2012-09-09','SH_CLERK',4200.00,0.00,121,50),
(185,'Alexis','Bull','ABULL','1987-09-10','SH_CLERK',4100.00,0.00,121,50),
(186,'Julia','Dellinger','JDELLING','1987-09-11','SH_CLERK',3400.00,0.00,121,50),
(187,'Anthony','Cabrio','ACABRIO','2007-09-12','SH_CLERK',3000.00,0.00,121,50),
(188,'Kelly','Chung','KCHUNG','1987-09-13','SH_CLERK',3800.00,0.00,122,50),
(189,'Jennifer','Dilly','JDILLY','1987-09-14','SH_CLERK',3600.00,0.00,122,50),
(190,'Timothy','Gates','TGATES','1987-09-15','SH_CLERK',2900.00,0.00,122,50),
(191,'Randall','Perkins','RPERKINS','1987-09-16','SH_CLERK',2500.00,0.00,122,50),
(192,'Sarah','Bell','SBELL','1987-09-17','SH_CLERK',4000.00,0.00,123,50),
(193,'Britney','Everett','BEVERETT','1987-09-18','SH_CLERK',3900.00,0.00,123,50),
(194,'Samuel','McCain','SMCCAIN','2000-09-19','SH_CLERK',3200.00,0.00,123,50),
(195,'Vance','Jones','VJONES','1996-09-20','SH_CLERK',2800.00,0.00,123,50),
(196,'Alana','Walsh','AWALSH','1987-09-21','SH_CLERK',3100.00,0.00,124,50),
(197,'Kevin','Feeney','KFEENEY','1987-09-22','SH_CLERK',3000.00,0.00,124,50),
(198,'Donald','OConnell','DOCONNEL','1997-09-23','SH_CLERK',2600.00,0.00,124,50),
(199,'Douglas','Grant','DGRANT','1987-09-24','SH_CLERK',2600.00,0.00,124,50),
(200,'Jennifer','Whalen','JWHALEN','1988-09-25','AD_ASST',4400.00,0.00,101,10),
(201,'Michael','Hartstein','MHARTSTE','1987-09-26','MK_MAN',13000.00,0.00,100,20),
(202,'Pat','Fay','PFAY','1987-09-27','MK_REP',6000.00,0.00,201,20),
(203,'Susan','Mavris','SMAVRIS','1989-09-28','HR_REP',6500.00,0.00,101,40),
(204,'Hermann','Baer','HBAER','1987-09-29','PR_REP',10000.00,0.00,101,70),
(205,'Shelley','Higgins','SHIGGINS','1987-09-30','AC_MGR',12000.00,0.00,101,110),
(206,'William','Gietz','WGIETZ','1997-10-01','AC_ACCOUNT',8300.00,0.00,205,110);

select * from myemp;
select * from myemp limit 5;
select * from myemp limit 50,5;
select emp_id,first_name,last_name,salary from myemp;
-- Derived Classes
select emp_id,first_name,last_name,salary,salary*0.2 as Bonus from myemp;
select emp_id,Bonus from myemp;
select emp_id,first_name,last_name,salary*0.2, salary + salary * 0.2 as Total_salary from myemp;

#28-07-2025-SQL_Class04(Case When )
select * from myemp;
select distinct dep_id from myemp;
select * from students;
select distinct * from students;
select distinct dep_id from myemp order by dep_id;
select distinct dep_id from myemp order by dep_id desc;
select * from myemp order by salary desc;
select * from myemp order by first_name;

-- operators
select * from myemp where salary >1000;
select * from myemp where salary >1000 order by salary desc; 
select * from myemp where dep_id = 30;
select * from myemp where emp_id =125;
select * from myemp where salary >10000 and dep_id =80; 
select * from myemp where salary >10000 and dep_id =80 order by salary desc; 
select * from myemp where salary >10000 or dep_id =80 order by salary desc; 

-- like operators
select * from myemp where first_name like "a%";  -- starts (a)
select * from myemp where first_name like "%a";  -- ends (a)
select * from myemp where first_name like "%a%";  -- contains (a)
select * from myemp where first_name like "john%";

-- between operators
select * from myemp where salary between 8000 and 10000 order by salary desc;
select * from myemp where salary > 10000 and dep_id = 80 and first_name like "l%" ;
select * from myemp where salary >1000 and salary <6000 ;

-- in operators
select * from myemp where dep_id = 10 or dep_id = 20 or dep_id = 30 or dep_id = 40 ;
select * from myemp where dep_id in (10,20,30,40);

-- case statement ( " , " after columnnames is important ) 
 select emp_id , first_name , last_name , job_id , case
when job_id = "ad_pres" then "President"
when job_id = "ad_vp" then "Vice President"
when job_id = "it_prog" then "Programmer"
when job_id like "fi%" then "Finance dept."
else "Employee"
end as Job_title from myemp;
-- if we need to change new values without table chnaging we can alias over new table name.

#29-07-2025-SQL_Class04(colaesce,Aggregations,Group By)
use practicedb;
select * from myemp;
select coalesce (null,null,"Hello",null,"World") as output;
select coalesce ( 1,null,null,0,null ) as Result;

-- Aggregations
select sum(salary) from myemp;
select avg(salary) from myemp;
select min(salary) from myemp;
select max(salary) from myemp;
-- Average aggreagation values as shown in single value
select first_name, sum(salary) from myemp;
-- contains non aggreagated column as first_name 

-- Group By
select dep_id ,avg(salary) from myemp group by dep_id order by dep_id desc;
select dep_id , round(avg(salary),2) as avg_sal from myemp group by dep_id order by dep_id desc;
-- round is used to hide decimal places (,2) defines decimal places required 

-- count
select count(*) from myemp;
select count(*) from myemp where salary >10000;

select dep_id ,avg(salary) from myemp where dep_id in (40,50,60) group by dep_id ;
select dep_id, avg(salary) from myemp group by dep_id having dep_id in (40,50,60);

-- Constraints
-- Constraints (Domain)
create table student (id int unique ,
					sname varchar(30) NOT NULL,
                    age int check (age>21),
                    course varchar(30) default "Mysql",
                    Gender ENUM ("male","female")
);
desc student;
insert into student ( id , sname, age, gender ) values ( 1,"Harry",26,"Male");
select * from student;

#31-07-2025-SQL_Class04()
-- primary key
create table sample1 ( id int primary key, sname varchar(30));
desc sample1;

create table sample2 (id int unique not null , sname varchar(30));
desc sample2;

create table sample3 (id int primary key , sid int unique not null);
desc sample3;

create table sample4 (id int);
desc sample4;
alter table sample4 modify column id int unique not null default 0;
alter table sample4 drop index id;
alter table sample4 alter column id drop default;
alter table sample4 modify column id int null;

-- refrential data integrity : Foreign key -> used to build relationship b/w tables
select * from authors;
CREATE TABLE Books(
             BookId INTEGER primary key, 
             Title VARCHAR(50),
             AuthorId INTEGER, foreign key (authorid) references authors(authorid));
             
insert into Books values(1,'Harry Potter and the Philosopher\'s Stone',1);
insert into Books values(2,'Harry Potter and the Chamber of Secrets',1);
insert into Books values(3,'Harry Potter and the Half-Blood Prince',1);
insert into Books values(4,'Harry Potter and the Goblet of Fire',1);
insert into Books values(5,'Night Without End',5);
insert into Books values(6,'Fear is the Key',5);
insert into Books values(7,'Where Eagles Dare',5);
insert into Books values(8,'Sense and Sensibility',6);
insert into Books values(9,'Pride and Prejudice',6);
insert into Books values(10,'Emma',6);
insert into Books values(11,'Five Point Someone',7);
insert into Books values(12,'Two States',7);
insert into Books values(13,'Salome',8);
insert into Books values(14,'The Happy Prince',8);
select * from books;
select * from authors;

#04-08-2025-SQL_Class(on delete cascade,on update cascade,Auto increment,inner join)
use practicedb;
select * from authors;
select * from books;
drop table IF exists books;
CREATE TABLE Books(
             BookId INTEGER primary key, 
             Title VARCHAR(50),
             AuthorId INTEGER, foreign key (authorid) references authors(authorid) on update cascade on delete cascade);
insert into Books values(1,'Harry Potter and the Philosopher\'s Stone',1);
insert into Books values(2,'Harry Potter and the Chamber of Secrets',1);
insert into Books values(3,'Harry Potter and the Half-Blood Prince',1);
insert into Books values(4,'Harry Potter and the Goblet of Fire',1);

insert into Books values(5,'Night Without End',5);
insert into Books values(6,'Fear is the Key',5);
insert into Books values(7,'Where Eagles Dare',5);

insert into Books values(8,'Sense and Sensibility',6);
insert into Books values(9,'Pride and Prejudice',6);
insert into Books values(10,'Emma',6);
insert into Books values(11,'Five Point Someone',7);
insert into Books values(12,'Two States',7);
insert into Books values(13,'Salome',8);
insert into Books values(14,'The Happy Prince',8);   

delete from authors where authorid=1;
select * from authors;
update authors set authorid = 80  where authorid=8;       

-- auto_increment
create table sample5 (id int primary key auto_increment , name varchar(30));
desc sample5;
insert into sample5 (name) values ( "harry"),("lisa");
select * from sample5;
alter table sample5 auto_increment =100;
insert into sample5 (name) values ( "john"),("alex");
delete from sample5;
set sql_safe_updates=0;
insert into sample5 (name) values ( "ram"),("tom");
truncate table sample5;
insert into sample5 (name) values ("hima"),( "harry");
DROP TABLE IF EXISTS `movies`;
create table movies (id integer, title varchar(50), category varchar(25));
insert into movies values(1,	'ASSASSIN\'S CREED: EMBERS',	'Animations'),
(2,	'Real Steel',	'Animations'),
(3,	'Alvin and the Chipmunks',	'Animations'),
(4,	'The Adventures of Tin Tin',	'Animations'),
(5,	'Safe', 	'Action'),
(6,	'Safe House',	'Action'),
(7,	'GIA',	'18+'),
(8,	'Deadline 2009',	'18+'),
(9,	'The Dirty Picture',	'18+'),
(10,	'Marley and me',	'Romance');

DROP TABLE IF EXISTS `members`;
create table members(memid integer, first_name varchar(25), last_name varchar(25), movieid integer);
insert into members values(1,'Alicia','Alarcon', 1),
(2,'Don','Draper', 2),
(3,'Lizzie','Moss', 5),
(4,'Eldon','Chance', 8),
(5,'Jenny','Patterson', 10),
(6,'Craig','Daniels', null),
(7,'Denny', 'Peters',null),
(8,'Patty','Pattinson',null);

select * FROM movies;
select * from members;
select  * from members inner join movies on members.movieid= movies.id;
select * from members join movies on id = movieid;

#05-08-2025-SQL_Class(left join,right join,cross join,self join,union.union all)
select * from movies;
select * from authors;
select * from members join movies on id = movieid;
select * from members left join movies on id = movieid;
select * from members right join movies on id = movieid;
select * from members right join movies on movieid = id;
-- if (id = movieid)shifts also there will be same result.
DROP TABLE IF EXISTS `meals`;

CREATE TABLE `meals` (
  `mealname` varchar(50) DEFAULT NULL,
  `rate` float(5,2) DEFAULT NULL
) ;

INSERT INTO `meals` VALUES ('Omlet',10.50),('Sausage',15.50),('Pancake',40.75);
select * from meals;
DROP TABLE IF EXISTS `drinks`;

CREATE TABLE `drinks` (
  `drinkname` varchar(50) DEFAULT NULL,
  `rate` float(5,2) DEFAULT NULL
) ;


INSERT INTO `drinks` VALUES ('Tea',5.00),('Coffee',15.00),('Pepsi',20.00);
select * from drinks;

select * from drinks cross join meals;
select * from meals cross join drinks;
select mealname,drinkname,meals.rate from meals cross join drinks;
select mealname, drinkname,meals.rate,drinks.rate,meals.rate + drinks.rate as Total from meals cross join drinks;
select mealname, drinkname,m.rate,d.rate,m.rate + d.rate as Total from meals as m cross join drinks as d;
-- aliases only work for the same line as it was stated
select emp.emp_id,emp.first_name ,emp.last_name,emp.mgr_id,mgr.first_name,mgr.last_name from myemp as emp join myemp as mgr on emp.mgr_id = mgr.emp_id order by emp_id;
select mealname from meals union select drinkname from drinks;

select * from members left join movies on id=movieid
union all
select * from members right join movies on id=movieid;

select * from members left join movies on id=movieid
union 
select * from members right join movies on id=movieid;

-- columns must be equal in same tables otherwise it will print error.

select ifnull( first_name, "--") as First_name,ifnull( last_name ,"--") as Last_name, title ,category from movies left join members on id= movieid;
 -- to change null into another displaying opiton can use null.
 
#06-08-2025-SQL_Class(Views,Indexes)
/* Views: virtual tables created based on a select command. */
create view cleaned_data as select ifnull( first_name, "--") as First_name,ifnull( last_name ,"--") as Last_name, title ,category from movies left join members on id= movieid;
select * from cleaned_data;
select emp_id,first_name ,last_name ,salary, salary * 0.2 as bonus from myemp;
-- we cant use bonus (where bonus >4000) as it was derived class.
create view emp_bonus as select emp_id,first_name ,last_name ,salary, salary * 0.2 as bonus from myemp;
select * from emp_bonus where bonus >4000;
create view dep_30 as select * from myemp where dep_id=30;
-- names doesnt overlap view table with main table. 
select * from dep_30;
select avg(salary ) from dep_30;
select sum(salary) from dep_30;
/* Views - complex views : joins,groupby,aggreagtion,distinct */
/* Views - Simple Views : single table */
create view  author_view as select * from authors where authorid <10;
select * from author_view;
insert into author_view values(1,"Harry");
select * from author_view;
insert into author_view values (25,"sample");  
-- The values is greater than 10 as cdtn created. 
select * from authors;
drop view author_view;
create view  author_view as select * from authors where authorid <10 with check option;
insert into author_view values (12,"testing"); 
-- check option to confirm the condition.
delete from author_view where authorid = 1;
-- can be deletable those id's.
select * from author_view;
select * from authors;
-- index : improving the performance of select query
-- Index: Btree -  Automatically created 
-- Index: Hash - superfast than btree
desc authors;
show indexes from authors;
desc myemp;
show indexes from myemp;
create index test_index using btree on myemp (emp_id);
-- we can use hash instead of btree
create index sample_index using hash on myemp (dep_id);
-- btree is default and hash cant support storage engine.

#07-08-2025-SQL_Class(TCL Commands,stored procedures)
use practicedb;
-- TCL(transaction control language) commands : Commit,rollback,savepoint
-- start transaction - to turn off the auto commit > insert DML commands(insert,update,delete) > commit(save)/rollback(don't save) >transaction ends >auto commit turns on automatically.

create table sample6 ( id int ,name varchar(30));
insert into sample6 values ( 1, "Hima");
select * from sample6;
-- Rollback 
start transaction;
insert into sample6 values (2,"Lisa"),(3,"Alex"),(4,"Harry");
rollback;
commit;
select * from sample6;

start transaction;
set sql_safe_updates=0;
update sample6 set name  = "ManojKUmar" where id = 1;
delete from sample6 where id = 4;
rollback;

start transaction;
delete from sample6;
rollback;
select * from sample6;

start transaction;
update sample6 set name = "Himavanth" where id =1;
savepoint s1;
delete from sample6 where id=4;
select * from sample6;
rollback to s1;
commit;

-- stored Procedures : PLSQL
-- PLSQL : Variables(x=2),parameters,if conditions,loops,Exception handling and cursors. 

call proc_variable();

#08-08-2025-SQL_Class(stored procedures(parameters))
use practicedb;
-- stored Procedures : PLSQL
-- PLSQL : Variables(x=2),parameters(IN parenthisis calling),if conditions,loops,Exception handling and cursors. 
-- types of parameter stored procedures >> parameters(IN(into the stored procedure), OUT(taking value out of procedure)) 
call Proc_author();
call Proc_author(4);
call Proc_out(@Avg_salary);
select @avg_salary;
-- types of if conditioned stored procedures >> if conditions (multiple cdtns with multiple o/p's)
call Proc_if(25);
call proc_grade(105); -- combination of stored procedures(variables,parameters and if conditions)
-- types of Exception Handling stored procedures >> Exception Handling(Handling the error)
call proc_fraud(1,1500);
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `client_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ;
desc payments;
select * from payments;

#11-08-2025-SQL_Class(stored procedures(Loops))
use practicedb;
-- Loops: Iteration of same condition
call Proc_loop();
-- calls from any of the database if the standard procedure is saved in any database.
-- Cursors : special variables( )(//normal variable(single value hold)//)
select * from products;
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `pcode` varchar(15) DEFAULT NULL,
  `pname` varchar(70) DEFAULT NULL,
  `productLine` varchar(50) NOT NULL,
  `pvendor` varchar(50) DEFAULT NULL,
  `qtyInStock` smallint(6) DEFAULT NULL,
  `MRP` decimal(7,2) DEFAULT NULL
) ;
select * from orders;

#12-08-2025-SQL_Class(User defined Functions, subqueries,Triggers)
-- Functions(to create own functions:in select command) stored Procedures :should call
use practicedb;
SET GLOBAL log_bin_trust_function_creators = 1;
select addnum(10,20);
select emp_id,first_name,last_name,hire_date, experience(emp_id) from myemp;
select emp_id,first_name,last_name,hire_date, exper(emp_id) from myemp;

-- subqueries
select max(salary) from myemp;
select * from myemp where salary =24000;
select * from myemp where salary = (select max(salary) from myemp);
-- above first select is to rpint and another select is condition 

select * from myemp where salary > (select avg(salary) from myemp) order by salary;

select * from myemp where salary;  -- gretaer than average to print
select avg(salary) from myemp ; -- 6456 is avg salary

select * from  employees where officecode in (select officecode from offices where country = "USA");

-- Triggers( Before insert,after insert,before and after delete, before and after update)

create table sample7 (sname varchar(30),working_hrs int);
insert into sample7 values("hima",45),("lisa",-38);
select * from sample7;
-- before insert()
select * from sample7;
insert into sample7 values("harry",45),("isac",-38),("robert",-45);


#13-08-2025-SQL_Class(Triggers)
-- after delete ()
use practicedb;
create table backup_table (sname varchar(30), working_hrs int, timing datetime );
select * from sample7;
select * from backup_table;
delete from sample7 where sname= "isac";
SET SQL_SAFE_UPDATES =0 ;
-- after update()
select * from books;
select * from book_sales;
desc book_sales;
alter table books add column sales int default  0;
select * from books;
select * from book_sales;
update books set sales = sales + 3 where bookid = 5; 
update books set sales = sales + 5 where bookid = 5; 


## from here should do
-- windows functions(avg,min,max,sum,rank,dense rank,lag,lead)
select first_name,dep_id,avg(salary)  from myemp group by dep_id; -- aggreagte function wont run
select first_name,dep_id,avg(salary) over (partition by dep_id) as avg_salary from myemp; -- window function
select first_name,avg(salary) over () from myemp;
-- if we use over it consider windows function than aggregate function 

-- rank functions
select * from t;
select val,rank() over (order by val desc) as ranking from t;
select val,dense_rank() over (order by val desc) as ranking from t;

select * from sales ;
select * ,dense_rank() over (partition by fiscal_year order by sale desc) as ranking from sales;
-- ranking is a derived column
-- fiscal year (year wise)

-- CTEs(common table expressions) -- for derived classes we can use it
with sample_cte as ( select * ,dense_rank() over ( partition by fiscal_year order by sale desc) as ranking from sales ) select * from sample_cte where ranking = 2 ;
 select * from sample_cte;
select * from trains;
select * ,lead ( time,1) over (partition by train_id) as next_station_time from trains; -- next year
select * ,lag ( time,1) over (partition by train_id) as next_station_time from trains; -- previous year
with sample_cte as (select * ,lead ( time,1) over (partition by train_id) as next_station_time from trains)select * , subtime(next_station_time,time) as time_difference from sample_cte;
select emp_id, first_name, last_name, salary, first_value(first_name) over (order by salary desc) 
as Highest_paid from myemp;

select emp_id, first_name, last_name, salary, nth_value(first_name, 3) over (order by salary desc) 
as "4th_name" from myemp;







