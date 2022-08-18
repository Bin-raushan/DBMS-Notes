
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  salary INT
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales', 1000);
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Account',5000);
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales' , 6000);
INSERT INTO EMPLOYEE VALUES (0004, 'Nitish', 'Sales' , 4000);
INSERT INTO EMPLOYEE VALUES (0005, 'Pankaj', 'Account' , 3000);
INSERT INTO EMPLOYEE VALUES (0006, 'Abhishek', 'Teacher' , 2000);

-- fetch 
SELECT * FROM EMPLOYEE;

-- sorting using ORDER by
 SELECT * FROM EMPLOYEE ORDER by salary; -- ascending oreder (asc by default)
 
 SELECT * FROM EMPLOYEE ORDER by salary desc; -- descending oreder
 
 -- Distinct
 SELECT Distinct dept from EMPLOYEE;
 SELECT Distinct name from EMPLOYEE;
 
-- group by
-- if we don't apply aggression in group by it's act like distinct.
SELECT dept, count(dept) FROM EMPLOYEE group by dept;
SELECT dept, avg(salary) FROM EMPLOYEE group by dept;
SELECT dept, sum(salary) FROM EMPLOYEE group by dept;
SELECT dept, max(salary) FROM EMPLOYEE group by dept;
SELECT dept, min(salary) FROM EMPLOYEE group by dept;

-- group by having
SELECT dept, count(dept) FROM EMPLOYEE group by dept having count(dept)>2;

 
 
 
