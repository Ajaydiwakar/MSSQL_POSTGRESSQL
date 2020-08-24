
SET search_path TO employees;


CREATE table public.Tech_Trainees
(
Trainee_ID serial,
Trainee_NAME character varying NOT NULL ,
Mobile_Number BIGINT NOT NULL,
Joining_date character varying(50),
Joining_Month character varying(20),
Previous_Profession character varying(50),
Batch_ID Integer NOT NULL,
PRIMARY KEY(Trainee_ID) ,
FOREIGN KEY(Batch_ID) references public.Batch(Batch_ID)
)


Create table public.Batch
(
Batch_ID INTEGER PRIMARY KEY  ,
Batch_type character varying(50) NOT NULL
)


INSERT INTO public.Tech_Trainees
(Trainee_NAME ,Mobile_Number ,Joining_date ,Joining_Month ,Previous_Profession ,Batch_ID) Values('Febin' , 8765413277 , '01-07-2020' , 'JULY' , 'SDE I' , 1);
INSERT INTO public.Tech_Trainees
(Trainee_NAME ,Mobile_Number ,Joining_date ,Joining_Month ,Previous_Profession ,Batch_ID) Values('Ajay' , 7765413271 , '01-07-2020' , 'JULY' , 'SDE II' , 4);
INSERT INTO public.Tech_Trainees
(Trainee_NAME ,Mobile_Number ,Joining_date ,Joining_Month ,Previous_Profession ,Batch_ID) Values('Abdul' , 9765413274 , '01-07-2020' , 'JULY' , 'Product Support Engineer' , 3);
INSERT INTO public.Tech_Trainees
(Trainee_NAME ,Mobile_Number ,Joining_date ,Joining_Month ,Previous_Profession ,Batch_ID) Values('Rishi' , 9765413273 , '01-07-2020' , 'JULY' , 'Cloud Intern' , 2);
INSERT INTO public.Tech_Trainees
(Trainee_NAME ,Mobile_Number ,Joining_date ,Joining_Month ,Previous_Profession ,Batch_ID) Values('Abhishek' , 8765413276 , '01-07-2020' , 'JULY' , 'Fresher Passout' , 1);
INSERT INTO public.Tech_Trainees
(Trainee_NAME ,Mobile_Number ,Joining_date ,Joining_Month ,Previous_Profession ,Batch_ID) Values('Rajiv' , 6765413277 , '01-07-2020' , 'JULY' , 'QA' , 4);


INSERT INTO public.Batch Values(1, 'DevOps Trainee');
INSERT INTO public.Batch Values(2, 'UI/UX Trainee');
INSERT INTO public.Batch Values(3, 'Application Stack Trainee');
INSERT INTO public.Batch Values(4, 'Cloud Engineer Trainee');

select *from public.Tech_Trainees;
select *from public.Batch;
