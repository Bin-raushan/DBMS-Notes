
CREATE TABLE dept1 (
  empID int primary key,
  name varchar(255),
  role varchar(255),
  age int,
  address varchar(255)
);

insert into dept1 (empID,name,role,age,address) values
(1,'A', 'Engineer', 21,'delhi'),
(2,'B', 'Salesman', 23, 'kolkata'),
(3,'C', 'Manager1', 27, 'mumbai'),
(4,'D', 'Salesman', 31, 'patna'),
(5,'E', 'Engineer', 41, 'jaipur');

select * from dept1;

-- VIEW
-- creating a view
CREATE VIEW custom_view as select name,age from dept1;

-- viewing from view
select * from custom_view;

-- Altering the view
alter view custom_view as select role,address from dept1;
select * from custom_view;

-- droping the view
drop VIEW if exists custom_view;