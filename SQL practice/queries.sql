-- create
CREATE TABLE EMPLOYEE (
  id int primary key,
  fname varchar(255),
  lname varchar(255),
  age int,
  emailId varchar(255),
  phoneNo int,
  city varchar(255)
);

CREATE TABLE PROJECT (
  id int primary key,
  empID int,
  name varchar(255),
  startdate date,
  clintID int
  );

CREATE TABLE CLIENT (
  id int primary key,
  first_name varchar(255),
  last_name varchar(255),
  age int,
  emailId varchar(255),
  phoneNo int,
  city varchar(255),
  empID int
  );
-- insert
INSERT INTO EMPLOYEE (id,fname,lname,age,emailId,phoneNo,city) VALUES
(1,'aman', 'proto',32, 'aman@gmail.com', 898, 'delhi'),
(2,'yogya', 'narayan',44, 'yogya@gmail.com', 222, 'palam'),
(3,'rahul', 'bd',22, 'rahul@gmail.com', 444, 'kolkata'),
(4,'jatin', 'harmit',31, 'jatin@gmail.com', 666, 'raipur'),
(5,'PK', 'pandey',21, 'pk@gmail.com', 555, 'jaipur');


INSERT INTO PROJECT (id,empID,name,startdate,clintID) VALUES
(1,1,'A','2021-04-21',3),
(2,2,'B','2021-03-12',1),
(3,3,'C','2021-01-16',5),
(4,3,'D','2021-04-27',2),
(5,5,'E','2021-05-01',4);

INSERT INTO CLIENT (id,first_name,last_name,age,emailId,phoneNo,city,empID) VALUES
(1,'mac','rogers',47,'mac@hotmail.com',333,'kolkata',3),
(2,'max','poirier',27,'max@gmail.com',222,'kolkata',3),
(3,'peter','jain',24,'peter@abc.com',111,'delhi',1),
(4,'sushant','agrawal',23,'sushant@yahoo.com',45454,'hyderabad',5),
(5,'pratap','singh',36,'p@xyz.com',77767,'mumbai',2);

-- subqueries
-- where clause same table
-- employee with age>30
select * from EMPLOYEE where age in (select age from EMPLOYEE where age>30);


-- where clause different table
-- employee details workin in more than 1 project
select * from EMPLOYEE where id in (select empID from 
PROJECT group by empID having count(empID)>1);


-- single value subquerie
-- employee details having age > average age
select * from EMPLOYEE where age >(select avg(age) from EMPLOYEE);

-- from clause - drived table
-- select max age person whose first name contains a
select max(age) from (select * from EMPLOYEE where fname like '%a%') as temp;

-- corelated subqueries
-- find third oldest EMPLOYEE
select * from EMPLOYEE e1 where 3= (select count(e2.age) from EMPLOYEE e2 where e2.age>=e1.age);


























