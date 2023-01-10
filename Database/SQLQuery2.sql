create procedure sp_GateData @userId int
As Begin
if Exists (Select * from model where userId=@userId)

Begin
Select * from model where userId=@userId
End
End