-- schema.sql
-- PostgreSQL schema for ChocolateSales project

CREATE TABLE chocolate_sales (
    sales_person     VARCHAR(100),
    country          VARCHAR(100),
    product          VARCHAR(150),
    date             DATE,
    amount           NUMERIC(10,2),
    boxes_Shipped    INTEGER
);

