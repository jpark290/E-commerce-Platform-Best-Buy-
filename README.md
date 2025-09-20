# E-commerce-Platform-Best-Buy

Oracle SQL e-commerce schema (Best Buy style): normalized tables, indexes, seeded test data, and 10+ business requirement queries.

## Features
- **Schema**: 12 normalized tables (Users, Orders, Products, Categories, etc.)
- **Indexes**: optimized queries on foreign keys and product fields
- **Seed data**: sample categories, brands, products, users, orders, promotions
- **Business queries**: product search, cart management, user lifecycle, shipping, refunds
- **Reports**: monthly sales, popular products, customer categories

## Repository Structure
```text
sql/
├─ 01_schema.sql # Create tables
├─ 02_indexes.sql # Add indexes
├─ 03_seed.sql # Insert sample data
└─ 04_business_queries.sql# Business requirement queries

expected/ # Example outputs of key queries
├─ monthly_sales_example.txt
├─ popular_products_example.txt
├─ customer_categories_example.txt
└─ active_promotions_example.txt

privacy/
└─ NOTICE.md # Data source & privacy disclaimer
```

## Quickstart (Oracle SQL Developer)
1. Connect to Oracle database schema
2. Run scripts in order:
   - `sql/01_schema.sql`
   - `sql/02_indexes.sql`
   - `sql/03_seed.sql`
   - `sql/04_business_queries.sql`
3. Check `/expected` folder for sample query outputs

## Sample Results
- [Monthly Sales](expected/monthly_sales_example.txt)
- [Popular Products](expected/popular_products_example.txt)
- [Customer Categories](expected/customer_categories_example.txt)
- [Active Promotions](expected/active_promotions_example.txt)

## Privacy & Data Source
See [`/privacy/NOTICE.md`](privacy/NOTICE.md).  
All data is synthetic, anonymized, and intended only for educational use.
