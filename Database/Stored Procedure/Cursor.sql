----Declare the Cursor
DECLARE 
    @product_name VARCHAR(MAX), 
    @list_price   DECIMAL;

DECLARE cursor_product CURSOR
FOR SELECT 
        Name,
        RollNo
    FROM 
        Student;
-----Open the Cursor
OPEN cursor_product;

----Fecth the Cursor
WHILE @@FETCH_STATUS = 0  
    BEGIN
        FETCH NEXT FROM cursor_product;  
    END;
-----Close the Cursor
CLOSE cursor_product;
	
----Deallocate the Cursor

DEALLOCATE cursor_product;


