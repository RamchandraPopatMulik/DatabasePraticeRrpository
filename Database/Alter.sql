---Alter Table With Add Coloum
ALTER TABLE Student ADD Description varchar(500);


Select * from Student
---Drop Coloum To an Existing Table

ALTER TABLE Student DROP COLUMN Description;

---Change the DataType Of Coloum
ALTER TABLE Student MODIFY COLOUM Salary int;

---Add Not Null Constraint
ALTER TABLE Student MODIFY Salary bigint NOT NULL;