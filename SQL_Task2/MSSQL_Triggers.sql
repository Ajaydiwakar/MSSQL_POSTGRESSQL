
Triggers


//DML Triggers

select *from Employees;

INSERT TRIGGER 

create trigger tr_employee_insert
on dbo.Employees
after insert
as
begin
  print 'A new row inserted in existing table data '
end

select *from Employees;

INSERT into Employees values(91 , 'Ajay' ,'Diwakar' , 'Male' , 110000 ,2);


//Using a trigger to display the inserted table once trigger is executed //

ALTER trigger tr_employee_insert
on dbo.Employees
after insert
as
begin
   print 'A new row inserted in existing table data ';
   select *from inserted;

end


INSERT into Employees values(121 , ' Amrita' , 'Singh' , 'Female' , 168000	, 3);
INSERT into Employees values(151 , ' Satish' , 'Kumar' , 'Male' , 198000	, 1 );
INSERT into Employees values(201 , ' Shivam' , 'Singh' , 'Male' , 198000	, 1 );



DELETE TRIGGER 

create trigger tr_employee_delete
on dbo.Employees
after delete
as
begin
  print 'A  row has been deleted from existing table data ';
  Select *from Deleted;
end


DELETE from dbo.Employees WHERE ID = 91 OR FirstName = 'Mark';


// Create a AUDIT report by using  AUDIT TRIGGER

Create table tbl_Employee_Audit
(
Audit_id INT PRIMARY KEY IDENTITY,
Audit_Info VARCHAR(MAX)
)

select *from tbl_Employee_Audit;


create trigger tr_employee_audit
on dbo.Employees
after insert
as
begin
    DECLARE @id int
	Select @id = id from inserted

	INSERT into tbl_Employee_Audit values ('Employee with Id ' + CAST( @id as varchar(50)) + ' is added at ' + CAST( SYSDATETIME() as varchar(50)));

end


INSERT into Employees values(181 , ' Ritika' , 'Sharma' , 'Female' , 210000	, 1 );




create trigger tr_employee_audit_delete
on dbo.Employees
after delete
as
begin
    DECLARE @id int
	Select @id = id from inserted

	INSERT into tbl_Employee_Audit values ('Employee with Id ' + CAST( @id as varchar(50)) + '  is deleted at ' + CAST( SYSDATETIME() as varchar(50)));

end





ALTER trigger tr_employee_audit_delete
on dbo.Employees
after delete
as
begin
    DECLARE @id int
	Select @id = id from deleted

	INSERT into tbl_Employee_Audit values ('Employee with Id ' + CAST( @id as varchar(50)) + '  is deleted at ' + CAST( GETDATE() as varchar(50)));

end


DELETE from dbo.Employees WHERE ID = 201 ;

select *from tbl_Employee_Audit;


UPDATE TRIGGER WITH ALIAS 


create trigger tr_employee_audit_update
on dbo.Employees
after update
as
begin
     SELECT *from INSERTED AS ROW_DATA_UPDATED;
	 SELECT *from DELETED AS ROW_DATA_REMOVED;
end


UPDATE Employees SET Salary = 110000 WHERE ID = 31;


// To see the TRIGGER code use system trigger

Sp_helptext tr_employee_audit_delete;