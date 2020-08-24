create database SDT

use SDT

Create table Employees
(
 ID int,
 FirstName nvarchar(50),
 LastName nvarchar(50),
 Gender nvarchar(50),
 Salary int
)
GO

Create table Batches
(
Batch_id INT NOT NULL ,
Batch_type varchar(50) NOT NULL
)

select *from Employees
select *from Batches



Alter table Employees add Batch_id INT NOT NULL 


Insert into Employees values (11, 'Mark', 'Hastings', 'Male', 60000 , 1)
Insert into Employees values (21, 'William', 'Johnson', 'Male', 60000 , 2)
Insert into Employees values (31, 'Johnson', 'Root', 'Male', 60000, 1)
Insert into Employees values (45, 'Aishwarya', 'Lambeth', 'Female', 30000 ,3)
Insert into Employees values (58, 'Jessica', 'Johnson', 'Female', 30000 , 2)


Insert into Batches values (1 , 'Devops Automation')
Insert into Batches values (2 , 'Application Development')
Insert into Batches values (3 , 'Cloud Engineering')


select *from Employees
select *from Batches

Truncate table Employees;

DROP table Employees
DROP table Batches




