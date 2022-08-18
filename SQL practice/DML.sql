 -- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name varchar(255),
  dept TEXT,
  salary INT
);


CREATE TABLE orde1(
id INT, foreign key(id) references EMPLOYEE(empId) on delete cascade , -- we can use on delete set null too.
fname varchar(255),
age INT
);

-- DML
-- insert
insert into EMPLOYEE values (1, 'ram' , 'cse', 10000);
insert into EMPLOYEE values (2, 'Shyamam' , 'hr', 20000);


insert into EMPLOYEE (empId, name , dept , salary) values
(3, 'jam' , 'ee', 15000),
(4, 'tam' , 'ce', 14000),
(5, 'kam' , 'fe', 19000),
(6, 'pam' , 'de', 16000);


insert into EMPLOYEE (empId, name) values
(7, 'fab'),
(8, 'nab');


insert into orde1 values(1, 'kaushal', 25);
insert into orde1 values(2, 'gaushal', 27);
insert into orde1 values(3, 'haushal', 29);


select * from orde1;



select * from EMPLOYEE;

-- update
update EMPLOYEE set dept='ge' , salary=23000 where empId=7;
select * from EMPLOYEE;

-- update multimple rows
update EMPLOYEE set salary=1000;
select * from EMPLOYEE;


-- delete
delete from EMPLOYEE where empId=1;
select * from EMPLOYEE;

-- -- delete full table
-- delete from EMPLOYEE;
-- select * from EMPLOYEE;

delete from EMPLOYEE where empId=2;
select * from EMPLOYEE;
select * from orde1;


-- replace
replace into EMPLOYEE (empId, name) values (3 , 'gautam');


-- --replace into EMPLOYEE set empId=3, name='gautam', dept='text';

select * from EMPLOYEE;
-- replace works like insert if data is not present
replace into EMPLOYEE (empId, name) values (11 , 'suru');
select * from EMPLOYEE;
 
 
 
