Select * from Student s Full Outer Join Student1 s1 on s.Id= s1.Id;

Select * from Student s Cross Join Student1 s1 ;

Select Name,RollNo from Student Where RollNo In (1,2,3) order by RollNo