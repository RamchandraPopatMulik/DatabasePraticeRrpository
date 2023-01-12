Select * from Student



create procedure sp_FindProduct(@Name varchar(70),@RollNo int,@Class varchar(30),@Gender char(1),@ParentPhNo int )
As Begin
Select * from Student Where Name=@Name and RollNo=@RollNo
End;

create procedure sp_FindProduct1(@Name varchar(70),@RollNo int,@Class varchar(30),@Gender char(1),@ParentPhNo int )
As Begin
Select Name,RollNo,Class,Gender from Student Where Name=@Name and RollNo=@RollNo
End;
-----If 
create procedure sp_FindProduct2(@Name varchar(70),@RollNo int,@Class varchar(30),@Gender char(1),@ParentPhNo int )
As Begin
Select Name,RollNo,Class,Gender from Student Where Name=@Name and RollNo=@RollNo
if
@RollNo =125
begin
print 'Roll No is 125' 
end
End;

-----If Else Stored Procedure

create procedure sp_FindProduct3(@Name varchar(70),@RollNo int,@Class varchar(30),@Gender char(1),@ParentPhNo int )
As Begin
Select Name,RollNo,Class,Gender from Student Where Name=@Name and RollNo=@RollNo
if
@RollNo =125
begin
print 'Roll No is 125' 
end
else
begin
print 'Roll No is Not 125' 
End
End;

-----While
create procedure sp_FindProduct4(@Name varchar(70),@RollNo int,@Class varchar(30),@Gender char(1),@ParentPhNo int )
As Begin
Select Name,RollNo,Class,Gender from Student Where Name=@Name and RollNo=@RollNo
While @RollNo <=125
Begin
print @RollNo;
Set @RollNo =@RollNo+1;
end
End

-----Break

create procedure sp_FindProduct5(@Name varchar(70),@RollNo int,@Class varchar(30),@Gender char(1),@ParentPhNo int )
As Begin
Select Name,RollNo,Class,Gender from Student Where Name=@Name and RollNo=@RollNo
While @RollNo <=125
Begin
print @RollNo;
Set @RollNo =@RollNo+1;
if @RollNo=125
break;
end
End

-----Continue

create procedure sp_FindProduct6(@Name varchar(70),@RollNo int,@Class varchar(30),@Gender char(1),@ParentPhNo int )
As Begin
Select Name,RollNo,Class,Gender from Student Where Name=@Name and RollNo=@RollNo
While @RollNo <=125
Begin
print @RollNo;
Set @RollNo =@RollNo+1;
if @RollNo=125
continue;
end
End


----Try Catch 

create procedure sp_FindProduct7(@Name varchar(70),@RollNo int,@Class varchar(30),@Gender char(1),@ParentPhNo int )
As Begin
Select Name,RollNo,Class,Gender from Student Where Name=@Name and RollNo=@RollNo
While @RollNo <=125
Begin
print @RollNo;
Set @RollNo =@RollNo+1;
if @RollNo=125
continue;
End 
End