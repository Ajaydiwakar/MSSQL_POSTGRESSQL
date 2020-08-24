create database SDT

use SDT

Create table Employees
(
 ID int NOT NULL,
 FirstName nvarchar(50) NOT NULL,
 LastName nvarchar(50) NOT NULL,
 Gender nvarchar(50) NOT NULL,
 Salary int,
 Batch_id INT NOT NULL
 PRIMARY KEY(ID),
 FOREIGN KEY(Batch_id) references dbo.Batches(Batch_id)
)

Create table Batches
(
Batch_id INT PRIMARY KEY  ,
Batch_type nvarchar(50) NOT NULL
)



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

UPDATE Employees
set Salary = 90000 where ID = 21;

DELETE from Employees Where ID = 58

DELETE from Batches where Batch_id = 3;

