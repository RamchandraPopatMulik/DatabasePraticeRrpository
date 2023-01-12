CREATE INDEX ClassRoom ON Student;
--Single Coloumn Indexes
CREATE INDEX ClassRoom
ON Student (Name);

---Unique Coloumn Indexes
Create Unique Index Lab ON School(id)

Create Table School
(
id int,

)

----Composite Indexes
CREATE INDEX SchoolNew
on Student (Name, RollNo);

--Drop Indexes

DROP INDEX SchoolNew ON Student