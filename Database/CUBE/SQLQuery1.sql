SELECT
   Name + ' ' + Gender AS 'Full Name'
FROM
    Student
ORDER BY
   Name;

Select * from Student

------Cube
Select Name,RollNo,Sum(Salary) As TotalSalary from Student
Group by Cube(Name,RollNo);

-----Rollup
Select Name,RollNo,Sum(Salary) As TotalSalary from Student
Group by Rollup(Name,RollNo);

