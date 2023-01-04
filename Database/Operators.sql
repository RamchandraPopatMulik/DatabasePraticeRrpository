SELECT Name,RollNo FROM Student UNION SELECT Name,RollNo FROM Student1;
SELECT Name,RollNo FROM Student Intersect SELECT Name,RollNo FROM Student1;
Select Name,RollNo FROM Student Except SELECT Name,RollNo FROM Student1;