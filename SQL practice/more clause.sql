
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  salary INT
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales' , 5000);
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting' , 16000);
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales' , 12000);
INSERT INTO EMPLOYEE VALUES (0004, 'John', 'Hr' , 21000);
INSERT INTO EMPLOYEE VALUES (0005, 'Kamla', 'Programmer', 13000);
INSERT INTO EMPLOYEE VALUES (0006, 'Harish', 'Manager', 18000);
INSERT INTO EMPLOYEE VALUES (0007, 'la', 'Ceo', NULL);
INSERT INTO EMPLOYEE VALUES (0008, 'al', 'Ceo', NULL);

-- fetch 
SELECT * FROM EMPLOYEE;

-- -- not
SELECT name,salary FROM EMPLOYEE where dept NOT IN ('Hr' , 'Sales'); 

SELECT name from EMPLOYEE where salary is NULL;

-- -- wildcard
 
-- -- (%) means there can be any number of chracter where % is replaced
select name, salary FROM EMPLOYEE where name like '%a%'; --ex: vvanush
select name, salary FROM EMPLOYEE where name like '%a'; --ex:bcdea
select name, salary FROM EMPLOYEE where name like 'a%'; --ex: abcde
 
 -- (_) means there can be only one chracter where after _ 
 select name, salary , dept FROM EMPLOYEE where name like '_v_'; --ex: ava
 select name, salary FROM EMPLOYEE where name like '_a'; --ex: la
 select name, salary FROM EMPLOYEE where name like 'a_'; -- ex: al
 
 
 
