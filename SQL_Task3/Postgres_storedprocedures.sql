

create table accounts (
    id int generated by default as identity,
    name varchar(100) not null,
    balance dec(15,2) not null,
    primary key(id)
);

insert into accounts(name,balance)values('Diwakar',100000);
insert into accounts(name,balance)values('Johnson',145000);
insert into accounts(name,balance)values('Robert',115000);

select *from accounts;


create or replace procedure  money_transfer( sender int , receiver int , amount dec)
language plpgsql
as $transfer$
begin
    update accounts set balance = balance - amount where id=2;
	update accounts set balance = balance + amount where id=1;
	commit;
end
$transfer$


call money_transfer(2,1,50000);



Create table public.tbl_Batches
(
Batch_id INT PRIMARY KEY  ,
Batch_type varchar(50) NOT NULL
)


Insert into public.tbl_Batches values (1 , 'Devops Automation');
Insert into public.tbl_Batches values (2 , 'Application Development');
insert into public.tbl_Batches values (3 , 'Cloud Engineering');


select *from tbl_batches;
select *from tbl_employees;


create or replace procedure Insert_batches_data( integer , character varying )
language plpgsql
as $$
begin
  INSERT INTO tbl_batches( batch_id , batch_type) values($1,$2);
  COMMIT;
end;
$$

call Insert_batches_data(4 , 'Backend Developer')



UPDATE procedure

create  procedure Update_Employee_data( integer , integer )
language plpgsql
as $$
begin
  UPDATE tbl_employees SET salary =$2 where id = $1 ;
  COMMIT;
end;
$$

call Update_Employee_data(11, 135000)