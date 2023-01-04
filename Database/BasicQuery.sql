create Database Ram;

create Table Student
(
Id int Identity(1,1) Not Null Primary Key,
Name varchar(70) Not Null,
RollNo int,
Class varchar(30)
)

select * from Student

Insert into Student (Name,RollNo,Class)values('Ram',101,'10th');
Insert into Student (Name,RollNo,Class)values('Sachin',102,'9th');
Insert into Student (Name,RollNo,Class)values('Ashwini',103,'9th');
Insert into Student (Name,RollNo,Class)values('Gaurav',104,'10th');

Select Name,Class from Student where Name='Ram' and Class='10th'

Alter Table Student Add Gender Char(1)

Update Student set Gender='M' Where Name='Ram'
Update Student set Gender='M' Where Name='Sachin'
Update Student set Gender='M' Where Name='Gaurav'

Update Student set Gender='F' Where Name='Ashwini'


Alter Table Student Add ParentPhNo long;
Alter Table Student Add Adderess varchar(100);

Update Student set Adderess= 'Revangoan' Where Name ='Ram'
Update Student set Adderess= 'Vita' Where Name ='Sachin'
Update Student set Adderess= 'Revangoan' Where Name ='Ashwini'
Update Student set Adderess= 'Vita' Where Name ='Gaurav'

Update Student set Adderess= 'Renavi' Where Name = 'Ram' and RollNo=101
Update Student set Adderess= 'Revangoan' Where Name = 'Ram' or RollNo=101

Select Name,RollNo from Student where RollNo in(101,102,103) order by RollNo;
Select Name,RollNo from Student where RollNo between 101 and 104 order by RollNo;
Select Name,RollNo from Student where Name Like 'R%';

Truncate Table Student;
Drop Table Student;