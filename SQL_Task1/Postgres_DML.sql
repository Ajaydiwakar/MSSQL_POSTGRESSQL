Create database Employees
 With 
 Owner = postgres
 Encoding = 'UTF-8'
 Connection limit = -1
 
COMMENT on database Employees 
IS  'This is a part of Task1 of SQL at Kloudone';



SET search_path TO Employees;


Create table public.tbl_Employees
(
 ID int NOT NULL,
 FirstName varchar(50) NOT NULL,
 LastName varchar(50) NOT NULL,
 Gender varchar(50) NOT NULL,
 Salary int,
 Batch_id INT NOT NULL,
 PRIMARY KEY(ID),
 FOREIGN KEY(Batch_id) references public.tbl_Batches(Batch_id)
)

Create table public.tbl_Batches
(
Batch_id INT PRIMARY KEY  ,
Batch_type varchar(50) NOT NULL
)

SELECT *from public.tbl_batches


INSERT INTO public.tbl_Employees values (11, 'Mark', 'Hastings', 'Male', 60000 , 1);
Insert into public.tbl_Employees values (21, 'William', 'Johnson', 'Male', 60000 , 2);
Insert into public.tbl_Employees values (31, 'Johnson', 'Root', 'Male', 60000, 1);
Insert into public.tbl_Employees values (45, 'Aishwarya', 'Lambeth', 'Female', 30000 ,3);
Insert into public.tbl_Employees values (58, 'Jessica', 'Johnson', 'Female', 30000 , 2);


Insert into public.tbl_Batches values (1 , 'Devops Automation');
Insert into public.tbl_Batches values (2 , 'Application Development');
insert into public.tbl_Batches values (3 , 'Cloud Engineering');


select * from public.tbl_Employees;
select * from public.tbl_Batches;

UPDATE public.tbl_Employees
set Salary = 86000 where ID = 21;

DELETE from public.tbl_Employees Where ID = 58

DELETE from public.tbl_Batches where Batch_id = 3;

