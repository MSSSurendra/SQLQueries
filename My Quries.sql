select * from faculty_table;
select * from student_table;
select * from product_table;
select * from employee_table;
select * from cinema;
select * from cinema_table;
select * from fac_table;
select * from customers;
select * from persons;
desc persons;
use practise;
use hibernate21;
use springmvchibernate21;
show tables;
drop table persons;


select min(rating) as "total records" 
from cinema_table;

















alter table cinema_table drop column crating;

rename table cinema_table to cinema;
ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name;

rename table coustomers to customers;
alter table cinema rename column cactor to hero;
alter table cinema rename column cdirector to director;
alter table cinema rename column crating to rating;
delete from cinema where id is null;

delete from employee_table where employee_id = '45' and '76';



insert into customers(cid,cname,caddress,cpostalcode,ccity,ccountry) 
values(12,'Cardinal', 'Skagen ', '4006 ', 'Stavanger ', 'Norway');

insert into cinema
values(5,'COOP','RTR','DESC','1.25');


create table movie(
ID int not null,
release_year year,
release_date date not null,
collection bigint
);
desc movie;

select * from movie;

delete from movie where id = '5';

delete from employee_table where employee_id = '2';

insert into movie
values(null,'2020','2021-04-16','120000');

update movie set release_year = '2021' where id = '4';

ALTER TABLE movie
MODIFY COLUMN Id INT AUTO_INCREMENT;

ALTER TABLE movie
ADD PRIMARY KEY (id);



desc cinema;

select fid,fname from faculty_table;
select cid,cname from customers;

select distinct fgender from faculty_table;
select * from customers order by cid desc;
SELECT * FROM customers WHERE ccountry = 'USA' AND cname LIKE 'm%';
select * from customers where ccountry like 'u_a%';
select * from customers where ccountry like 'g%y';
select * from customers where ccountry like '[UGS]%';
select * from customers where ccountry like '%a%';
select count(*) from customers where ccountry like '%a%';

select * from customers where ccountry = 'USA' and cname like 'm%' or cname like 'k%';
select * from customers where ccountry = 'USA' or ccountry = 'UK' or ccountry = 'Spain'; 
select * from customers  where not Country = 'USA';
select * from customers where ccountry not like 'u%';
select * from customers where cid not between 2 and 6;
select * from customers where not ccountry  = 'USA' and  not ccountry = 'UK';
select * from customers where ccountry not in ('USA','UK','mexico');
select * from customers where not cid >5;
select * from customers where cid <=5;
select * from customers where ccountry is not null;
update customers set ccountry = 'Spain' where cid = 11;
update customers set cpostalcode = 42526 where cid = 11;
delete from customers where cid = 12;
truncate table customers; # deletes all data in the table but not the table
drop table customers; # to deleate the table
select ccity from customers where cpostalcode >=1552 limit 17; # The SELECT LIMIT clause is useful on large tables with thousands of records.
select ccity from customers order by ccity desc limit 7;
set sql_safe_updates = 0; # to turn off safe mode
set sql_safe_updates = 1; # to turn on safe mode
select count(*) from customers;
select count(*) from customers where ccountry like 'u%';
select count(*) from customers where ccountry like '%u';
select min(cpostalcode) from customers where ccountry = 'usa';
select max(cpostalcode) from customers;
select avg(cpostalcode) from customers ;
select sum(cpostalcode) from customers;
select count(cpostalcode) from customers;
select * from customers where cpostalcode between 13000 and 85000 and cid in (1,2,3,4,5);
select * from customers where cname between "Mike" and "Edition" order by cname;
select city as towndata, country as ccountry from customers; # as is optional 
select ccity as "Total Cities" from customers;
select ccity,ccountry,cpostalcode as "Total Cities" from customers;
select cname from cinema_table union select cname from customers;
select cname,cdirector from cinema_table;
select country, caddress from customers group by caddress;
SELECT ccountry, caddress, COUNT(*) AS count
FROM customers
GROUP BY ccountry, caddress;
select count(cid) as total, ccountry from customers group by ccountry;
select count(cid) as total, ccountry from customers group by ccountry having count(cid) > 1;
select count(cid) as total, ccountry from customers group by ccountry having count(cid) > 1 order by count(cid) desc;
alter table customers add stay varchar(20);
alter table customers drop stay;
alter table customers change ccountry  Country varchar(20);
select cname, concat(caddress, ',', cpostalcode ,',', ccity ,',', ccountry) as Address from customers;
select cinema_table.cactor, customers.caddress,cinema_table.cdirector from customers inner join cinema_table on customers.cname = cinema_table.cname;
ALTER TABLE fac_table
MODIFY COLUMN fac_gender varchar(60);
update customers set cname = 'Cake' where cname = 'Mike';
select * from customers where cname is not Null;
select * from customers where city is Null;
update customers set caddress = 'city of Rome' where cid = '5';

delete from customers where cid = 13;
alter table customers drop column Country;

select cid as id,cname as how, Country as "city antar ra babu" from customers;
select cid, concat(cname, ',', caddress, ',',cpostalcode, ',',Country) as Details_of_customer from customers;
select * from customers where Country != 'USA';
select * from customers where not Country = 'USA';
 select count(cid) as total_records from customers;
 select cid,city from customers group by cid;

select * from cinema_table;
select * from cinema;
select * from movie;
select * from customers;

select title, sum(rating) as total from cinema_table group by title;

select hero,cname from cinema_table where director in ('KORATALA','GOWTHAM');

select cname,director,rating from cinema_table order by rating desc limit 3 ;


select collection from movie where collection > (select avg(collection) from movie);# Sub Query example

alter table movie 
add hit_status boolean;

alter table movie drop column hit_status;
delete from movie where id= 4;

update movie set hit_status = 6 where id = 2;

select release_year, sum(collection) as "that year collections" from movie
where release_year > 2019
group by release_year
having sum(collection) > 10000
order by release_year asc limit 2; 



alter table cinema_table rename column crating to rating;

update cinema_table set hero = 'kapoor' where id = 4; 

select hero, director from cinema_table
where rating > 2
union all
select hero, director from cinema
where rating > 2
order by hero asc;

show tables;

##############################################################################################################################################
                                               #joins practise#
                                               
create table movies(
movie_id int,
title varchar(20),
director_id int
);

insert into movies(movie_id,title,director_id) values(3,'PUSHPA',3);
insert into directors(director_id,name) values(4,'SUKUMAR');

select title  from movies;
select name from directors;

create table directors(
director_id int,
name varchar(20)
);

SELECT m.title, d.name FROM movies m inner join directors d on d.director_id = m.director_id;
SELECT m.title, d.name FROM movies m left join directors d on d.director_id = m.director_id;
SELECT * FROM movies m left join directors d on d.director_id = m.director_id;

SELECT m.title, d.name FROM movies m RIGHT JOIN directors d on d.director_id = m.director_id;
SELECT * FROM movies m RIGHT JOIN directors d on d.director_id = m.director_id;

select * from movies CROSS JOIN directors order by movie_id asc;

















create table coustomers
(
cid int primary key,
cname varchar(50) not null,
caddress char(50) not null,
cpostalcode int(10) not null unique,
ccity varchar(20) not null,
ccountry varchar(30) not null
);

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);

alter table persons add unique (LastName);
alter table persons drop index LastName;select * from customers LIMIT 0, 1000
