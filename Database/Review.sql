create procedure sp_update @userId int 
As Begin
If Exists (Select * from Lable where userId = @userId)
Begin 
update Lable set userId=@userId
End
else
Begin
Insert into Label (userId) values(1)
End
End


Select * from Student s Left Join Student1 s1 on s.Name=s1.Name;

Select * from Student

Select lastName from UserTable Where userId>1;