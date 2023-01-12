CREATE TABLE product_audits(
    change_id INT IDENTITY PRIMARY KEY,
    product_id INT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    model_year SMALLINT NOT NULL,
    list_price DEC(10,2) NOT NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL')
);

INSERT INTO
    product_audits
        (
            product_id,
            product_name,
            brand_id,
            category_id,
            model_year,
            list_price,
            updated_at,
            operation
        )
SELECT
    i.product_id,
    product_name,
    brand_id,
    category_id,
    model_year,
    i.list_price,
    GETDATE(),
    'INS'
FROM
    inserted AS i
UNION ALL
    SELECT
        d.product_id,
        product_name,
        brand_id,
        category_id,
        model_year,
        d.list_price,
        getdate(),
        'DEL'
    FROM
        deleted AS d;

INSERT INTO products(
    product_name, 
    brand_id, 
    category_id, 
    model_year, 
    list_price
)
VALUES (
    'Test product',
    1,
    1,
    2018,
    599
);
