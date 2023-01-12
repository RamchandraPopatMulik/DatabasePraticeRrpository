----Create Stored Procedure
CREATE PROCEDURE sp_ProductList
AS
BEGIN
    SELECT 
        Name,
		RollNo,
		Class
    FROM 
        Student
    ORDER BY 
        Name;
END;
---Exceute StoredProcedure
Execute sp_ProductList
----Alter StoredProcedure

 ALTER Procedure sp_ProductList
    AS
    BEGIN
        SELECT 
            Name,
			RollNo,
			Class
        FROM 
            Student
        ORDER BY 
            Name
    END;
----Exceute Stored Procedure

Exec sp_ProductList
---Drop Procedure

Drop procedure sp_ProductList

ALTER PROCEDURE sp_FindProducts(@min_RollNo)
AS
BEGIN
    SELECT
        Name,
		RollNo,
		Class
    FROM 
        Student
    WHERE
        RollNo >= @min_RollNo
    ORDER BY
        Name;
END;

CREATE PROCEDURE uspFindProductByModel (
    @model_year SMALLINT,
    @product_count INT OUTPUT
) AS
BEGIN
    SELECT 
        product_name,
        list_price
    FROM
        production.products
    WHERE
        model_year = @model_year;

    SELECT @product_count = @@ROWCOUNT;
END;

