
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  salary INT 
);

-- insert
INSERT INTO EMPLOYEE VALUES (01, 'Clark', 'Sales' , 1000);
INSERT INTO EMPLOYEE VALUES (02, 'Dave', 'Account' , 2000);
INSERT INTO EMPLOYEE VALUES (04, 'Ava', 'Hr' , 5000);
INSERT INTO EMPLOYEE VALUES (06, 'Kal', 'Teacher' , 8000);
INSERT INTO EMPLOYEE VALUES (09, 'Ram', 'Program' , 25000);
INSERT INTO EMPLOYEE VALUES (11, 'Nitish', 'Manager' , 11000);
INSERT INTO EMPLOYEE VALUES (20, 'Raushan', 'Ceo' , 15000);

-- fetch 
SELECT * FROM EMPLOYEE;
SELECT name FROM EMPLOYEE;
SELECT name,empId FROM EMPLOYEE where salary>3000;
SELECT name,empId FROM EMPLOYEE where salary between 2000 and 5000;
SELECT name,empId FROM EMPLOYEE where dept='sales' or dept='Manager' or dept='Ceo';
-- better way
SELECT name,empId FROM EMPLOYEE where dept in ('Hr', 'Account', 'Teacher');



