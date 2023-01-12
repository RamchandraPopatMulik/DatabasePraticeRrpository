
-----Create Table WithOut Primary Key
CREATE TABLE parts(
    part_id   INT NOT NULL, 
    part_name VARCHAR(100)
);

INSERT INTO 
    PartsNew(part_id, part_name)
VALUES
    (1,'Frame'),
    (2,'Head Tube'),
    (3,'Handlebar Grip'),
    (4,'Shock Absorber'),
    (5,'Fork');

----Create Table With Primary Key
CREATE TABLE part_prices(
    part_id int,
    valid_from date,
    price decimal(18,4) not null,
    PRIMARY KEY(part_id, valid_from) 
);
----Alter 
ALTER TABLE parts
ADD PRIMARY KEY(part_id);
   
   create Table PartsNew
   (
    part_id   INT NOT NULL, 
    part_name VARCHAR(100)
   );

-------Table Not have a Clustred Index
CREATE CLUSTERED INDEX ix_parts_id
ON PartsNew (part_id); 
-----Non Clustered Index
CREATE NONCLUSTERED INDEX ix_parts_name
ON PartsNew (part_name);  

Select * from PartsNew


-----Rename Index
EXEC sp_rename 
    @objname = N'ix_parts_id', 
    @newname = N'ix_parts_id_New',   
    @objtype = N'INDEX';
----Create Unique Index

create Table Customer(
customer_id int,
email varchar(100)

);

Insert Into Customer Values(1,'mulikram2016@gmail.com'),(2,'mulikram2019@gmail.com'),(3,'mulikram2017@gmail.com');

Select 
customer_id,
email from Customer Where email='mulikram2016@gmail.com';


----Create Unique Custered Index

CREATE UNIQUE INDEX ix_cust_customer_id
ON Customer(customer_id);

Select * from Customer

------Create Unique Multiple Coloum
CREATE UNIQUE INDEX ix_cust_customer_email
ON Customer(customer_id,email);

----Insert Null Value
INSERT INTO Customer(customer_id) VALUES(NULL);

----Disable Index

ALTER INDEX ix_cust_customer_email
ON Customer
DISABLE;


-----Disable All Index

ALTER INDEX ALL ON Customer
DISABLE;

Select * from Customer

-----Enable Index
ALTER INDEX ix_cust_customer_email
ON Customer
REBUILD;


----Enable All Index

ALTER INDEX ALL ON Customer
REBUILD;

----Drop Index
DROP INDEX  
    ix_cust_customer_email ON Customer;
   
    
----Filtered Index
CREATE INDEX ix_cust_email
ON Customer(email)
WHERE email IS NOT NULL;
----Indexes On Computed Coloum
CREATE INDEX ix_cust_email_local_part
ON Customer(email_local_part);

