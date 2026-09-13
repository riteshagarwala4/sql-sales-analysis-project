/*
===============================================================================
Start Here
===============================================================================
Purpose:
    Select the DataWarehouse database created by the companion data warehouse
    project and confirm that the Gold-layer analysis tables are available.

Prerequisite:
    https://github.com/riteshagarwala4/sql-data-warehouse-project
===============================================================================
*/

USE DataWarehouse;
GO

SELECT
    TABLE_SCHEMA,
    TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'gold'
ORDER BY TABLE_NAME;
GO

SELECT
    (SELECT COUNT(*) FROM gold.dim_customers) AS customer_count,
    (SELECT COUNT(*) FROM gold.dim_products) AS product_count,
    (SELECT COUNT(*) FROM gold.fact_sales) AS sales_row_count;
GO
