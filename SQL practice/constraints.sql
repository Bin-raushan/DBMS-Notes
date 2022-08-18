
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name varchar(255) unique, -- we can't insert duplicate name in table
  dept TEXT NOT NULL,
  salary INT,
  constraint balance_chk check(salary>1000)
  -- we can't insert salary less than or equal to 1000 in table
);

-- insert EMPLOYEE table
INSERT INTO EMPLOYEE VALUES (1,'Clarck', 'Sales' ,7000);
INSERT INTO EMPLOYEE VALUES (2, 'Dave', 'Account',5000);
INSERT INTO EMPLOYEE VALUES (3, 'Ava', 'Sales' , 6000);
INSERT INTO EMPLOYEE VALUES (4, 'Nitish', 'Sales' , 4000);
INSERT INTO EMPLOYEE VALUES (5, 'Pankaj', 'Account' , 3000);
INSERT INTO EMPLOYEE VALUES (6, 'Abhishek', 'Teacher' , 2000);



CREATE TABLE ORDER1 (
id INTEGER PRIMARY key,
fname varchar(255),
address varchar(255)  NOT NULL default'a',
foreign key (id) references EMPLOYEE(empId)
);


INSERT INTO ORDER1 VALUES (1,'Clarck', 'Siliguri');
INSERT INTO ORDER1 (id,fname) VALUES (6, 'Patna');



-- fetch 
SELECT * FROM EMPLOYEE;
SELECT * FROM ORDER1;



 
 
 
