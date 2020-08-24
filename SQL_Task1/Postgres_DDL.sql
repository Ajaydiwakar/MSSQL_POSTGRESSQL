Create database Employees
 With 
 Owner = postgres
 Encoding = 'UTF-8'
 Connection limit = -1
 
COMMENT on database Employees 
IS  'This is a part of Task1 of SQL at Kloudone';


Create table public.Employees
(
 ID int,
 FirstName varchar(50),
 LastName varchar(50),
 Gender varchar(50),
 Salary int
)


Create table public.Batches
(
Batch_id INT NOT NULL ,
Batch_type varchar(50) NOT NULL
)



Alter table public.Employees add Batch_id INT NOT NULL ;


INSERT INTO public.Employees values (11, 'Mark', 'Hastings', 'Male', 60000 , 1);


TRUNCATE table public.Employees

select * from public.Employees;


DROP table public.Employees;




