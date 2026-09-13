# Data dictionary

All analysis is performed against the `gold` schema in the `DataWarehouse` database created by the companion data warehouse project.

## `gold.dim_customers`

One row per customer. Includes surrogate key (`customer_key`), business identifiers, customer name, country, marital status, gender, birth date, and creation date.

## `gold.dim_products`

One row per product. Includes surrogate key (`product_key`), product identifiers, product name, category and subcategory, maintenance class, cost, product line, and start date.

## `gold.fact_sales`

One row per sales line. Contains the order number, product and customer keys, order/shipping/due dates, sales amount, quantity, and unit price.

## Relationships

`gold.fact_sales.customer_key` joins to `gold.dim_customers.customer_key`.

`gold.fact_sales.product_key` joins to `gold.dim_products.product_key`.
