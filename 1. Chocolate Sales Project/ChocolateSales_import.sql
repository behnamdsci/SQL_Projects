-- import.sql
-- Load raw CSV → staging table → clean → final table

-- 1. Create staging table
CREATE TABLE chocolate_sales_raw (
    sales_person   TEXT,
    country        TEXT,
    product        TEXT,
    date           TEXT,
    amount         TEXT,
    boxes_shipped  TEXT
);

-- 2. Import CSV into staging table
COPY chocolate_sales_raw
FROM 'C:/CSV/ChocolateSales_dataset.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

-- 3. Clean and insert into final table
INSERT INTO chocolate_sales (
    sales_person,
    country,
    product,
    date,
    amount,
    boxes_shipped
)
SELECT
    sales_person,
    country,
    product,
    TO_DATE(date, 'DD/MM/YYYY'),
    REPLACE(REPLACE(amount, '$', ''), ',', '')::numeric(10,2),
    boxes_shipped::integer
FROM chocolate_sales_raw;

-- 4. Drop staging table
DROP TABLE IF EXISTS chocolate_sales_raw;