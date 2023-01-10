Insert into Student Values('Sajeev',121,'TE','M',5656565,'Indore');
Insert into Student(Name,RollNo,Class,Gender,ParentPhNo,Adderess) values('Sandip',123,'BCS','M',56565656,'Kamothe');


update Student set Name='Rajjev' where Name ='Sandip'
Select * from Student

Delete from Student

DELETE TOP (1) FROM Student;  

Delete Top (1) percent from Student

Begin transaction 
Insert into Student(Name,RollNo,Class,Gender,ParentPhNo,Adderess) values('karmaveer',125,'BCS','F',5656656,'Thane');
commit