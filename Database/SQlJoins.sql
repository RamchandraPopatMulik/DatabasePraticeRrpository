create Table Student1
(
Id int Identity(1,1) Not Null Primary Key,
Name varchar(70) Not Null,
RollNo int Not Null,
Class varchar(30) Not Null,
Department varchar(100) Not Null
)

select * from Student1

Insert into Student1 (Name,RollNo,Class,Department)values('Ram',101,'FE','IT');
Insert into Student1 (Name,RollNo,Class,Department)values('Sachin',102,'BE','CSE');
Insert into Student1 (Name,RollNo,Class,Department)values('Ashwini',103,'SE','ENTC');
Insert into Student1 (Name,RollNo,Class,Department)values('Gaurav',104,'BE','MECH');

Select Department From Student s Left Join Student1 s1 on s.Name=s1.Name ;
Select Department From Student s Right Join Student1 s1 on s.Name=s1.Name ;
Select Department From Student s Full Outer Join Student1 s1 on s.Name=s1.Name ;


Delete from Student Where Name='Ram'