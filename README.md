# SQL Sales Analysis Project

An introductory SQL Server project that explores a sales data warehouse and turns its transactional data into reusable customer and product reporting views.

## Why this project

The work is organised as a progression from becoming familiar with a database to answering business questions about revenue, customers, products, time trends, and performance. It demonstrates practical use of joins, aggregations, CTEs, `CASE`, date functions, ranking functions, and window functions in T-SQL.

## Data source and prerequisite

This project analyses the Gold-layer tables produced by my [SQL Data Warehouse Project](https://github.com/riteshagarwala4/sql-data-warehouse-project). Run that project first to create the `DataWarehouse` database and load these tables:

- `gold.dim_customers`
- `gold.dim_products`
- `gold.fact_sales`

Keeping the warehouse build and the analysis in separate repositories reflects a simple real-world workflow: one project prepares trusted data; the next answers business questions with it.

## Project structure

```text
sql-sales-analysis-project/
├── docs/
│   ├── data-dictionary.md     # Table and column reference
│   └── analysis-guide.md      # Questions answered by each script
├── scripts/
│   ├── 00_start_here.sql      # Selects and verifies the warehouse database
│   ├── 01_... to 11_...       # Exploratory and advanced analyses
│   └── 12_... to 13_...       # Reusable reporting views
└── README.md
```

## Analysis included

| Area | Examples |
| --- | --- |
| Database discovery | Tables, columns, dimensions, and date coverage |
| Business measures | Sales, order, quantity, product, and customer KPIs |
| Product and customer analysis | Revenue by category/customer, top and bottom performers |
| Time analysis | Monthly trends, running totals, moving averages, and year-over-year comparisons |
| Segmentation | Product cost bands and VIP/Regular/New customer cohorts |
| Reporting | `gold.report_customers` and `gold.report_products` views for downstream BI |

## Run locally

**Requirements:** SQL Server 2022+ and SQL Server Management Studio (SSMS). `DATETRUNC` is used in some scripts, so SQL Server 2022 or later is recommended.

1. Set up the [`DataWarehouse` database](https://github.com/riteshagarwala4/sql-data-warehouse-project) by running project 1.
2. Open `scripts/00_start_here.sql` in SSMS and run it to confirm the Gold tables are available.
3. Run the scripts in numerical order. The final two scripts create reusable reporting views.

## Skills demonstrated

T-SQL · SQL Server · exploratory data analysis · CTEs · joins · aggregations · `CASE` · date functions · ranking · window functions · analytical reporting · data segmentation

## Attribution

This is a learning project completed while following the SQL data analytics material by [Data with Baraa](https://www.datawithbaraa.com/). The repository is an analysis layer built on my own course-based data warehouse project. The course is credited here to make the project provenance transparent.

## About Me

Hi! I'm **Ritesh Agarwala**, an MIS Analyst at Wipro currently upskilling in SQL, data analytics, and data engineering.

- **LinkedIn**: [Profile](https://www.linkedin.com/in/ritesh-agarwala-255182297)

## License

MIT License. See [LICENSE](LICENSE).
