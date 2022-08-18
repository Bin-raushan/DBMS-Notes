
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name varchar(255),
  dept TEXT NOT NULL,
  salary INT
);


desc EMPLOYEE;

-- ALTER 

-- ADD new column
ALTER TABLE EMPLOYEE ADD address varchar(255);
desc EMPLOYEE;

-- modify column
ALTER TABLE EMPLOYEE modify salary double;
desc EMPLOYEE;

-- change column or rename column
ALTER TABLE EMPLOYEE change column dept department float;
desc EMPLOYEE;

-- drop column
ALTER TABLE EMPLOYEE drop column address;
desc EMPLOYEE;

-- Rename the table name
ALTER TABLE EMPLOYEE Rename To EMP;
desc EMP;



 
 
 
