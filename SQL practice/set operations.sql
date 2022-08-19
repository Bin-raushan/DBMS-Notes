
-- create
CREATE TABLE dept1 (
  empID int primary key,
  name varchar(255),
  role varchar(255)
);

CREATE TABLE dept2 (
  empID int primary key,
  name varchar(255),
  role varchar(255)
);

insert into dept1 (empID,name,role) values
(1,'A', 'Engineer'),
(2,'B', 'Salesman'),
(3,'C', 'Manager'),
(4,'D', 'Salesman'),
(5,'E', 'Engineer');

insert into dept2 (empID,name,role) values
(3,'C', 'Manager'),
(6,'F', 'Marketing'),
(7,'G','Salesman'); 

-- set operatins

-- list all the employee in the company (union)
select * from dept1 union select * from dept2;


-- list all the employee in all departments who works as salesman
select * from dept1 where role='Salesman' 
union 
select * from dept2 where role='Salesman';

-- list all the employee who work for both the departments (intersect)
select dept1.* from dept1 inner join dept2 using(empID); 

-- list all the employee working in dept1 not in dept2 (- set operator)
select dept1.* from dept1 left join dept2 using(empID) where dept2.empID is null;

