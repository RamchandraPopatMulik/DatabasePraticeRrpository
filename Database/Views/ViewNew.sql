SELECT 
    *
FROM (
    SELECT
        *
    FROM
        Student s
    INNER JOIN Student1 s1 
        ON s.Id = s1.Id
);


Select * from Student

Create View StudentInfo
As
SELECT
Name,RollNo,Class
FROM Student 

Select * from StudentInfo

Update StudentInfo set RollNo= 125 Where Name ='Ramchandra'
