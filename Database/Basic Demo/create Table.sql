create Database PraticeDatabase --Create Database

EXEC sp_databases;  --Show All database

Drop database PraticeDatabase  --Drop database

Drop database if Exists PraticeDatabase --drop database if exists


create Schema praticeSchema --- create Schema

CREATE table praticeSchema.jobs( ---create Table Schema
    job_id INT PRIMARY KEY IDENTITY,
    customer_id INT NOT NULL,
    description VARCHAR(200),
    created_at DATETIME2 NOT NULL
);

CREATE TABLE dbo.offices
(
    office_id      INT
    PRIMARY KEY IDENTITY, 
    office_name    NVARCHAR(40) NOT NULL, 
    office_address NVARCHAR(255) NOT NULL, 
    phone          VARCHAR(20),
);


ALTER SCHEMA description   ---Alter Schema
    TRANSFER  Object ::  dbo.offices

INSERT INTO 
    dbo.offices(office_name, office_address)  ---Insert Schema
VALUES
    ('Ramchandra','400 North 1st Street Vita, San Jose, CA 95130'),
    ('Mahesh','1070 River Dr Latur., Sacramento, CA 95820');

Drop Schema praticeSchema;   ---Drop Schema

DROP TABLE dbo.offices;  ---drop Table

DROP SCHEMA IF EXISTS praticeSchema; ---Drop Schema If Exists

CREATE SCHEMA Ram; --- create Schema

CREATE TABLE Ram.person (
    person_id INT IDENTITY(1,1) PRIMARY KEY, ---Identity(Seed,increment)
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL
);

Insert into Ram.person(first_name,last_name,gender) values('Ramchandra','Mulik','M');  --- Insert Into Schema

CREATE SEQUENCE item_counter   --Sequence 
    AS INT
    START WITH 10
    INCREMENT BY 10;

SELECT NEXT VALUE FOR item_counter; ---Next Value 

ALTER TABLE praticeSchema.jobs
ALTER COLUMN job_id varchar(10); ---Alter Table With Modify DataType

ALTER TABLE jobs
DROP COLUMN customer_id;   --Alter Table Drop Coloum

Truncate Table jobs;  ---Truncate Table 

Select * from jobs; ---Select 


EXEC sp_rename 'jobs', 'contracts';  ---Rename  its Not Allow For that you have to Rename Manually


CREATE TABLE #haro_products (    ---Create Temporary Table
    product_name VARCHAR(MAX),
    list_price DEC(10,2)
);


Select * from #haro_products    ---Show Table

DROP TABLE #haro_products;  ---Drop Temporary Table

CREATE SYNONYM person_id FOR person;  --Create Synonym

SELECT * FROM Ram.person; ----Select Synonym
