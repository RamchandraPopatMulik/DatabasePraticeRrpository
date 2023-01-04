create procedure sp_update @noteId int,@userId int,@title varchar(200),@discription varchar(7000),@reminder DateTime,
	@colour varchar(100),
	@image varchar(500),
	@archive bit,
	@pinNotes bit,
	@trash bit,@modified DateTime
	As
Begin 
Update NotesTable set title=@title,discription=@discription,reminder=@reminder,colour=@colour,image=@image,archive=@archive,pinNotes=@pinNotes,
trash=@trash where userId=@userId and noteId=@noteId
End

create procedure sp_PinNote @pinNotes bit,@userId int,@noteId int 
As Begin 
if @pinNotes=1
Begin 
Set @pinNotes=1
End
else
Set @pinNotes=0
End
Update NotesTable set pinNotes=@pinNotes where userId=@userId and noteId=@noteId

create procedure sp_Archieve @archive bit,@userId int,@noteId int 
As Begin 
if @archive=1
Begin 
Set @archive=1
End
else
Set @archive=0
End
Update NotesTable set archive=@archive where userId=@userId and noteId=@noteId

create procedure sp_Trash @trash bit,@userId int,@noteId int 
As Begin 
if @trash=1
Begin 
Set @trash=1
End
else
Set @trash=0
End
Update NotesTable set trash=@trash where userId=@userId and noteId=@noteId

create procedure sp_register @firstName varchar(50),@lastName varchar(50),@emailId varchar(150),@passWord varchar(50)
As 
Insert into UserTable (firstName,lastName,emailId,passWord) values (@firstName,@lastName,@emailId,@passWord) go;

create procedure sp_login @emailId varchar(150), @passWord varchar(50)  AS
Begin
Select  emailId From UserTable Where emailId =@emailId and  passWord=@passWord 
End

create procedure sp_forgot @emailId varchar(150) As 
Begin
Select  emailId From UserTable Where emailId =@emailId 
End

create procedure sp_ResetPassWord @emailId varchar(150),@passWord varchar(50) As
Begin 
Update UserTable set passWord=@passWord where emailId = @emailId   
End
