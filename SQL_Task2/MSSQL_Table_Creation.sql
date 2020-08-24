use SDT;

CREATE table Tech_Trainees
(
Trainee_ID INT IDENTITY(101 , 10),
Trainee_NAME Varchar(50) NOT NULL ,
Mobile_Number BIGINT NOT NULL,
Joining_date Varchar(50),
Joining_Month Varchar(20),
Previous_Profession Varchar(50),
Batch_ID INT NOT NULL
PRIMARY KEY(Trainee_ID) ,
FOREIGN KEY(Batch_ID) references Batch(Batch_ID)
)

Create table Batch
(
Batch_ID INT PRIMARY KEY  ,
Batch_type nvarchar(50) NOT NULL
)


INSERT INTO Tech_Trainees Values('Febin' , 8765413277 , '01-07-2020' , 'JULY' , 'SDE I' , 1)
INSERT INTO Tech_Trainees Values('Ajay' , 7765413271 , '01-07-2020' , 'JULY' , 'SDE II' , 4)
INSERT INTO Tech_Trainees Values('Abdul' , 9765413274 , '01-07-2020' , 'JULY' , 'Product Support Engineer' , 3)
INSERT INTO Tech_Trainees Values('Rishi' , 9765413273 , '01-07-2020' , 'JULY' , 'Cloud Intern' , 2)
INSERT INTO Tech_Trainees Values('Abhishek' , 8765413276 , '01-07-2020' , 'JULY' , 'Fresher Passout' , 1)
INSERT INTO Tech_Trainees Values('Rajiv' , 6765413277 , '01-07-2020' , 'JULY' , 'QA' , 4)


INSERT INTO Batch Values(1, 'DevOps Trainee');
INSERT INTO Batch Values(2, 'UI/UX Trainee');
INSERT INTO Batch Values(3, 'Application Stack Trainee');
INSERT INTO Batch Values(4, 'Cloud Engineer Trainee');



Select *from Tech_Trainees;
Select *from Batch;