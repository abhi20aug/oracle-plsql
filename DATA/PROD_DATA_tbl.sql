select * from prod_data

DROP TABLE PROD_DATA

CREATE TABLE prod_data (
    id                    INTEGER,
    product_family        VARCHAR(50),
    product_name          VARCHAR(50),
    product_code          VARCHAR(50),
    product_season        VARCHAR(50),
    product_rank          VARCHAR(50),
    product_description   VARCHAR2(4000),
    product_cost          NUMBER(8,2),
    product_image_url     VARCHAR(250),
    product_indoor        VARCHAR(50),
    product_instock       VARCHAR(50)
);