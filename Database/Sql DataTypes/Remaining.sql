create Table SqlDataTypes
(
 Id bit ,
 College_Id Int Identity(1,1),
 office_Id Decimal Identity(100,1),
 Room_Id Numeric Identity(1000,1),
 Name Varchar(50),
 Gender Char(5),
 Descripation NVarchar,
 Updated_Data  DateTime2,
 Data Date,
 CurrentTime Time,
 Created_at_DateTime DateTimeOffset
);

 