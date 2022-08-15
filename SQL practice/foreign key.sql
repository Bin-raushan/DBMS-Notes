
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  salary INT 
);

CREATE TABLE BONUS(
  empId INT, foreign key (empId) references EMPLOYEE(empId),
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  bonus INT 
);

-- insert
INSERT INTO EMPLOYEE VALUES (1, 'Clark', 'Sales' , 10000);
INSERT INTO EMPLOYEE VALUES (2, 'Dave', 'Accounting' , 15000);
INSERT INTO EMPLOYEE VALUES (3, 'Ava', 'Sales', 11000);


INSERT INTO BONUS VALUES (1, 'Clark', 'Sales' , 100);
INSERT INTO BONUS VALUES (2, 'Dave', 'Accounting' , 150);
INSERT INTO BONUS VALUES (3, 'Ava', 'Sales' ,110);

-- fetch 
SELECT * FROM EMPLOYEE;
SELECT * FROM BONUS;
select name,dept FROM EMPLOYEE where salary<12000;
select name,bonus FROM BONUS where dept='Sales';