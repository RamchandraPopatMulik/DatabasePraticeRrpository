create Table Employee
(
Id int Identity(1,1) Primary Key,
Name Varchar(100) Not Null,
Department Varchar(50) Not Null,
Gender Char(10) Not Null,
Address Varchar(500) Unique,
Date DateTime,
RollNo int foreign key references Student,
);

