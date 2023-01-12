CREATE TABLE parts(
    part_id   INT NOT NULL, 
    part_name VARCHAR(100)
);

Insert Into parts(part_id,part_name) Values(101,'Cluch'),(102,'Break'),(103,'Cluch Wire');

Select * from parts

SELECT 
    part_id, 
    part_name
FROM 
    parts
WHERE 
    part_id = 102;

CREATE TABLE part_prices(
    part_id int,
    valid_from date,
    price decimal(18,4) not null,
    PRIMARY KEY(part_id, valid_from) 
);
Select * from part_prices

