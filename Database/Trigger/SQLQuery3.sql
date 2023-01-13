CREATE TABLE Employee2  
(  
  Id INT PRIMARY KEY,  
  Name VARCHAR(45),  
  Salary INT,  
  Gender VARCHAR(12),  
  DepartmentId INT  
)  

INSERT INTO Employee2 VALUES (1,'Steffan', 82000, 'Male', 3),  
(2,'Amelie', 52000, 'Female', 2),  
(3,'Antonio', 25000, 'male', 1),  
(4,'Marco', 47000, 'Male', 2),  
(5,'Eliana', 46000, 'Female', 3)


SELECT * FROM Employee2;  


CREATE TABLE Employee_Audit_Test1  
(    
Id int IDENTITY,   
Audit_Action text   
)  

CREATE TRIGGER trInsertEmployee3   
ON Employee2  
FOR INSERT  
AS  
BEGIN  
  Declare @Id int  
  SELECT @Id = Id from inserted  
  INSERT INTO Employee_Audit_Test  
  VALUES ('New employee with Id = ' + CAST(@Id AS VARCHAR(10)) + ' is added at ' + CAST(Getdate() AS VARCHAR(22)))  
END  

INSERT INTO Employee2 VALUES (6,'Peter', 62000, 'Male', 3)


Select * from Employee2

CREATE TRIGGER trDeleteEmployee   
ON Employee  
FOR DELETE  
AS  
BEGIN  
  Declare @Id int  
  SELECT @Id = Id from deleted  
  INSERT INTO Employee_Audit_Test  
  VALUES ('An existing employee with Id = ' + CAST(@Id AS VARCHAR(10)) + ' is deleted at ' + CAST(Getdate() AS VARCHAR(22)))  
END  


DELETE FROM Employee2 WHERE Id = 2;

Select * from Employee2


  