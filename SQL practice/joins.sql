
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

-- inner join
select e.id,e.fname,e.lname,p.id,p.name from EMPLOYEE as e inner join 
PROJECT as p on e.id=p.empID;

-- without using inner join
select e.id,e.fname,e.lname,p.id,p.name from EMPLOYEE as e,
PROJECT as p where e.id=p.empID;

select e.id,e.emailId,e.phoneNo,c.first_name,c.last_name from EMPLOYEE as e inner join
CLIENT as c on e.id=c.empID where e.city='jaipur' and c.city='hyderabad';

-- left join
select * from EMPLOYEE as e
left join PROJECT as p on e.id=p.empID;

--right join
select p.id,p.name,e.fname,e.lname,e.emailId from EMPLOYEE as e
right join PROJECT as p on e.id=p.empID;

--cross join
select e.fname, e.lname,p.id,p.name from EMPLOYEE as e
cross join PROJECT as p;