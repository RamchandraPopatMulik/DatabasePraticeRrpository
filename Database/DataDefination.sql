create Database Brideagelabz;

Drop database if exists Brideagelabz

create Schema RFP
Go

Drop Schema RFP

create Table RFPStudents(
Id int Identity(5000,1) Primary key,
firstName varchar(100) Not Null,
lastName varchar(100) Not Null,
AddmissionDate Date,
PhoneNo bigint ,
ParentPhoneNo bigint,
storeId int foreign key references CFPStudents(Id)
);

create Table CFPStudents(
Id int Identity(5000,1) Primary key,
firstName varchar(100) Not Null,
lastName varchar(100) Not Null,
AddmissionDate Date,
PhoneNo bigint ,
ParentPhoneNo bigint,
);

Insert into CFPStudents Values('Ram','Mulik','2020-08-23',9646565655,5655656565),('Ram','Mulik','2020-08-23',9646565655,5655656565),('Hari','Mulik','2020-08-23',9646565655,5655656565),('Ramchandra','Mulik','2020-08-23',9646565655,5655656565);
Select * from CFPStudents

Insert into RFPStudents Values('Ram','Mulik','2020-08-23',9646565655,5655656565,5003);

Select * from RFPStudents

CREATE SEQUENCE RollNo
    AS INT
    START WITH 10
    INCREMENT BY 10;

SELECT NEXT VALUE FOR RollNo;

ALTER TABLE CFPStudents
    ADD 
        amount DECIMAL (10, 2) ,
        customer_name VARCHAR (50);

Alter Table RFPStudents
ADD 
description varchar(200);

ALTER TABLE  CFPStudents
ALTER COLUMN firstName varchar(1000);

ALTER TABLE CFPStudents
DROP COLUMN amount;

Alter Table CFPStudents Drop Column customer_name;

create Table Santosh
(
Id int
);

Drop Table if exists Santosh

Truncate table Santosh	
