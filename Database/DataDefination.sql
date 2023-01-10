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

SELECT Name FROM Student  
ORDER BY RAND ( )  
 
 --Random
SELECT TOP 5 Name from Student
ORDER BY Id  

SELECT *   
FROM Student s  
INNER JOIN Student1 s1 
ON s.Id= s1.Id  

Alter Table Student Add Salary int 

Insert into Student Values('Vinod',211,'BE','M',96043406,'Renavi',56565656) ,('Pramod',212,'BE','M',96043406,'Renavi',56565656),('Lalya',213,'BE','M',96043406,'Renavi',56565656)

Select * from Student

---- SUM -----
SELECT SUM(Salary) AS "Total Salary"  
FROM Student 
WHERE Salary > 20000;  

SELECT SUM (DISTINCT Salary) AS "Total Salary"  
FROM Student 
WHERE Salary > 20000;  

---Count Condition
SELECT COUNT(*)  
FROM Student Where RollNo >=110;  

----Count
SELECT COUNT(*)  
FROM Student1;  

---Count with Distinct
SELECT COUNT(DISTINCT Name)  
FROM Student;  

---Sum
SELECT SUM(Salary)  
FROM Student; 

Select * from Student
---Sum With Condition  

SELECT SUM(Salary)  
FROM Student  
WHERE Salary> 23000;
 
---Group 
SELECT SUM(Salary)  
FROM Student  
WHERE Salary>3  
GROUP BY Id;  

----Having
SELECT Id, SUM(Salary)  
FROM Student 
GROUP BY Id  
HAVING SUM(Salary)>=17000; 
----Avg
SELECT AVG(Salary)  
FROM Student;
---Max
SELECT MAX(Salary)  
FROM Student;  
---MIN
SELECT MIN(Salary)  
FROM Student; 



SELECT Id, COUNT(*)  
FROM Student   
GROUP BY Id; 

SELECT Id, COUNT(*)  
FROM Student   
GROUP BY Id  
HAVING COUNT(*)>2;  


SELECT *  
FROM Student  
ORDER BY NAME; 

SELECT *  
FROM Student  
ORDER BY NAME DESC; 