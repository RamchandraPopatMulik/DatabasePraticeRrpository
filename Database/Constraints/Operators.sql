create Table CheckConstraints
(
 Idbit bit ,
 College_Id Int Identity(1,1) Primary Key,
 office_Id Decimal  Check(office_Id >100),
 Room_Id Numeric  Not Null,
 Name Varchar(50) Unique,
 Gender Char(5) Not Null,
 Descripation NVarchar Not Null,
 Updated_Data  DateTime2 Not Null,
 Data Date,
 CurrentTime Time,
 Created_at_DateTime DateTimeOffset,
 Id int foreign key references Student(Id),
);
