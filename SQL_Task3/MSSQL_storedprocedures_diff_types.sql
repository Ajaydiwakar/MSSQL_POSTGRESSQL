use SDT

select *from Employees
select *from Batches


// Procedures with Single Parameters //

create procedure spEmployeesbyId
as
begin
SELECT ID,FirstName,Batch_id,Salary from Employees;
end

spEmployeesbyId
exec spEmployeesbyId


create procedure spEmployeesbyIdvariable
@id int
as
begin
SELECT FirstName,LastName, Batch_id,Salary from Employees  where ID = @id;
end

exec spEmployeesbyIdvariable 31;

//Procedures with multiple Parmeters//


create procedure spEmployeesbyIdandFirstName
@id int,
@FirstName nvarchar(50)
as
begin
SELECT FirstName,LastName, Batch_id,Salary from Employees  where ID = @id AND FirstName = @FirstName;
end

exec spEmployeesbyIdandFirstName 45 , 'Aishwarya';


//Altering Stored procedures //


ALTER procedure spEmployeesbyIdandFirstName
@id int,
@FirstName nvarchar(50),
@BatchID int
as
begin
SELECT * from Employees  where ID = @id AND FirstName = @FirstName;
SELECT * from Batches    where Batch_id = @BatchID;
end

exec spEmployeesbyIdandFirstName 45 , 'Aishwarya' , 3;


//Using a system procedures to the code of a procedure already defined //

sp_helptext spEmployeesbyIdvariable;


//Creating Procedures with WITH ENCRYPTION / Decryption//

///Encryption


create procedure spEmployeesID_with_Encryption
@id int
WITH ENCRYPTION
as
begin
SELECT FirstName,LastName, Batch_id,Salary from Employees  where ID = @id;
end

exec spEmployeesID_with_Encryption 31;

sp_helptext spEmployeesID_with_Encryption;



//Decryption

ALTER procedure spEmployeesID_with_Encryption
@id int

as
begin
SELECT FirstName,LastName, Batch_id,Salary from Employees  where ID = @id;
end

exec spEmployeesID_with_Encryption 31;


//Stored Procedures using Output Parameters //

Create procedure spGetEmployeeCount_Output_Parameters
@Gender nvarchar(20),
@EmployeeCount int Output
as
Begin
 Select  @EmployeeCount = Count(*) from dbo.Employees where Gender=@Gender
End

Declare @TotalCount int
Execute spGetEmployeeCount_Output_Parameters 'Male' , @TotalCount Output
print @TotalCount



Declare @TotalCount int
Execute spGetEmployeeCount_Output_Parameters 'Male' , @TotalCount Output
if(@TotalCount is null)
   print 'TotalCount is NULL'
else
   print 'TotalCount is not NULL'

