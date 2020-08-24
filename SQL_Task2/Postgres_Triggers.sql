SET search_path TO employees


select *from public.tbl_Employees;
select *from public.tbl_Batches

Create table public.tbl_Employees
(
 ID  SERIAL,
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


INSERT INTO public.tbl_Employees(FirstName , LastName ,Gender ,Salary ,Batch_id) values ( 'Mark', 'Hastings', 'Male', 60000 , 1);
Insert into public.tbl_Employees(FirstName , LastName ,Gender ,Salary ,Batch_id) values ( 'William', 'Johnson', 'Male', 60000 , 2);
Insert into public.tbl_Employees(FirstName , LastName ,Gender ,Salary ,Batch_id) values ( 'Johnson', 'Root', 'Male', 60000, 1);
Insert into public.tbl_Employees(FirstName , LastName ,Gender ,Salary ,Batch_id) values ( 'Aishwarya', 'Lambeth', 'Female', 30000 ,3);
Insert into public.tbl_Employees(FirstName , LastName ,Gender ,Salary ,Batch_id) values ('Jessica', 'Johnson', 'Female', 30000 , 2);


Insert into public.tbl_Batches values (1 , 'Devops Automation');
Insert into public.tbl_Batches values (2 , 'Application Development');
insert into public.tbl_Batches values (3 , 'Cloud Engineering');



create or replace function public.total_Employees()
returns integer as $total$
declare total integer;
begin
select count(*) into total from public.tbl_Employees;
return total;
end;
$total$ language plpgsql;

select public.total_Employees();


create table public.audit(ID integer NOT NULL PRIMARY KEY , FIRSTNAME text NOT NULL ,LASTNAME text NOT NULL, entry_date text);

select *from public.audit;

create or replace function public.audit_log() 
returns trigger as $insert$
begin
insert into public.audit(ID , firstname , lastname , entry_date)values(new.ID,new.firstname,new.lastname ,current_timestamp);
return new;
end;
$insert$ language plpgsql;


create trigger employees_insert after insert on public.tbl_Employees
for each row execute procedure public.audit_log(); 

