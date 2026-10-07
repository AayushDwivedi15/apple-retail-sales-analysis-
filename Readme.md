# 🍏 Apple Retail Sales: End-to-End Data Analytics Pipeline

## 📌 Project Overview

This project demonstrates a complete enterprise data analytics pipeline using an Apple retail sales dataset sourced from Kaggle (1 Million+ rows). The objective was to engineer raw CSV data into a relational database, perform advanced data quality checks using SQL, and design an optimized Star Schema in Power BI for a strictly branded, interactive dashboard.

## 🛠️ Tech Stack & Tools

* **Data Source:** Kaggle (5 Raw CSV files: Sales, Products, Stores, Warranty, Category)

* **Database Engineering:** SQL Server (CTEs, Subqueries, Joins, Aggregations)

* **Data Modeling:** Power Query (Snowflake to Star Schema transformation)

* **Business Intelligence:** Power BI (Advanced DAX, Context Transition, UI/UX Design)

## 🏗️ Data Architecture & Pipeline

### Phase 1: Database Engineering & EDA (SQL)

* **Data Import & Type Casting:** Loaded over 1.04 million sales records and 30,000 warranty claims into SQL Server.

* **Handling Integer Overflow:** Prevented `Arithmetic overflow error` during total revenue calculation (\~\$6.16 Billion) by casting the `quantity` column to `BIGINT` before aggregating.

* **Granularity Validation:** Differentiated between transaction counts (`COUNT(product_id)`) and physical volume sold (`SUM(quantity)`) to ensure accurate KPI reporting.

* **Exploratory Data Analysis:** Utilized CTEs and subqueries to validate referential integrity (checking for orphan records between sales and warranty tables) and establish baseline metrics.

### Phase 2: Data Modeling (Power BI)

* **Schema Optimization:** Transformed the initial Snowflake Schema into a highly efficient **Star Schema** by merging the `Category` dimension directly into the `Products` table via Power Query.

* **Storage Mode Resolution:** Navigated VertiPaq engine constraints by converting tables to **Import Mode**, resolving "limited relationship" errors that were blocking cross-table DAX filter contexts.

### Phase 3: DAX & Visualization

* **Advanced DAX:** Built robust measures utilizing iterators (`SUMX`) and logical filter contexts to accurately calculate revenue across dimensional tables.

* **UI/UX Design:** Designed a strict, monochrome presentation aligned with Apple's corporate branding, intentionally avoiding cluttered "fruit salad" color schemes to maintain a professional, executive-ready aesthetic.

## 💡 Key Analytical Insights & Data Diagnostics

1. **Warranty Diagnostics:** Calculated an overall warranty claim rate of **2.88%**, identifying the *Home Pod mini* as the product with the highest volume of associated claims.

2. **Data Anomaly Detection (Uniform Distribution):** During the visual validation phase, I mathematically verified that the Kaggle dataset was synthetically generated using a uniform distribution. This was proven by the perfectly even distribution of warranty statuses (\~25% each) and identically capped revenue across top global cities (Dubai, London, Paris tying at \~\$329M). This served as a rigorous stress-test, proving the Star Schema and DAX filter contexts were executing flawlessly.

## 📂 Repository Structure

* `/data` - Contains the dimension tables and a **sample** of the raw Sales CSV. *(Note: The full 1M+ row sales dataset was used for local SQL/Power BI processing but exceeded GitHub's file size limits for direct upload).*

* `/sql_queries` - Contains `EDA_Queries.sql` featuring the CTEs, joins, and aggregations used for data validation.

* `/power_bi` - Contains the final `.pbix` dashboard file.

* `/images` - High-resolution screenshots of the dashboard UI.