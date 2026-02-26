# 🍫 ChocolateSales 

This project analyzes a fictional but realistic **Chocolate Sales dataset**, focusing on sales performance, product trends, regional insights, and salesperson effectiveness.  
It follows my standardized SQL project workflow: clear documentation, structured analysis questions, and reproducible PostgreSQL scripts.

---

## 📁 Project Structure

```
ChocolateSales/
│
├── ChocolateSales_dataset.csv
├── ChocolateSales_schema.sql
├── ChocolateSales_import.sql
├── ChocolateSales_queries.sql
└── README.md
```


## File Descriptions

| File | Purpose |
|------|---------|
| **ChocolateSales_dataset.csv** | Raw transactional sales data |
| **ChocolateSales_schema.sql** | PostgreSQL schema (tables, data types, constraints) |
| **ChocolateSales_import.sql** | COPY/INSERT script to import the dataset into PostgreSQL |
| **ChocolateSales_queries.sql** | All SQL analysis queries |
| **README.md** | Documentation, questions, insights |

---
## 🧠 Analysis Method

This project follows a structured SQL analysis workflow to ensure clarity, depth, and reproducibility.

### 1. Dataset Overview
The dataset contains chocolate sales transactions across multiple countries and sales representatives.

#### Columns & Definitions

| Column | Description |
|--------|-------------|
| **Date** | Transaction date in `YYYY-MM-DD` format |
| **Product** | Full product name |
| **Amount** | Sales amount in USD for the transaction |
| **Boxes Shipped** | Number of boxes sold in the transaction |
| **Country** | Customer or sales country |
| **Sales Person** | Name of the responsible sales representative |


### 2. Data Cleaning and Validation

#### 2.1 Format Validation for All Columns
Each column is checked to ensure it follows the correct data type and formatting rules:
- **Date** must follow the `YYYY-MM-DD` format and represent valid calendar dates.
- **Product** must contain valid text values without numeric-only or corrupted entries.
- **Amount** must be numeric with two decimal places and free of symbols or text.
- **Boxes Shipped** must be an integer value without decimals or non-numeric characters.
- **Country** must contain alphabetic text representing valid country names.
- **Sales Person** must contain valid name strings, not numbers or empty values.

This ensures the dataset loads correctly into PostgreSQL and supports accurate querying.

#### 2.2 Removing Duplicates
Duplicate detection focuses on identifying rows that represent the same real-world transaction. Duplicates are checked using a combination of key identifying fields:
- **Date**
- **Product**
- **Country**
- **Sales Person**

If multiple rows share the same values for these columns, they are reviewed to determine whether they represent accidental duplicate entries. The **Amount** and **Boxes Shipped** values are compared to confirm whether the duplicates are true errors or legitimate repeated orders. Confirmed duplicates are removed to prevent inflated revenue or shipment totals.

#### 2.3 Searching for Missing Values
Each column is scanned for NULL or empty values:
- **Date** missing values disrupt time-based analysis.
- **Product** missing values prevent product-level grouping.
- **Amount** missing values distort revenue calculations.
- **Boxes Shipped** missing values affect volume analysis.
- **Country** missing values break regional comparisons.
- **Sales Person** missing values impact performance evaluation.

Depending on severity, missing values may be corrected, categorized (e.g., “Unknown”), or removed.

#### 2.4 Text Standardization for Text Columns
Text fields are standardized to ensure consistent grouping and avoid splitting categories:
- **Product** names are cleaned for casing, spacing, and spelling consistency.
- **Country** names are normalized to a single format (e.g., “USA” vs. “United States”).
- **Sales Person** names are standardized for consistent capitalization and spacing.

This prevents the same category from appearing multiple times due to formatting differences.

#### 2.5 Range Check for Numeric Columns
Numeric fields are validated to ensure values fall within realistic business ranges:
- **Amount** must be non-negative; unusually high values are reviewed for potential data entry errors.
- **Boxes Shipped** must be positive integers; extremely large quantities are checked for accuracy.

Range checks help detect outliers, typos, or corrupted data that could distort analysis.

### 3. Descriptive Analysis
With clean data, descriptive analysis provides an initial understanding of overall patterns and distributions. This includes summarizing totals, averages, counts, and rankings to reveal the basic structure of the dataset. These descriptive metrics form the foundation for deeper exploration.

### 4. Column Combinations and Relationship Exploration
Each column is examined in combination with others to uncover meaningful relationships, patterns, and interactions. This includes comparing categories, analyzing trends across dimensions, evaluating performance differences, and identifying correlations or anomalies. The goal is to explore all relevant column pairings and determine whether the resulting insights are meaningful from a business or analytical perspective.

### 5. Insights Summary and Visualization Opportunities
Insights from descriptive and relational analysis are summarized clearly and concisely. This includes highlighting key findings, notable trends, performance differences, and unexpected patterns. The section also identifies which insights are best suited for visualization—such as trends, comparisons, rankings, or correlations—to support clearer communication and interpretation of results.

---

## 🛠️ Tools Used

- **PostgreSQL** (primary database engine)  
- **pgAdmin 4** (database management + query execution)  
- **SQL** (analysis, cleaning, transformation)

---

## 🚀 How to Run This Project

1. Create a new PostgreSQL database in **pgAdmin 4**.  
2. Run `ChocolateSales_schema.sql` to create the table structure.  
3. Run `ChocolateSales_import.sql` to load the dataset.  
4. Execute the analysis queries in `ChocolateSales_queries.sql`.  
5. Review insights in this README.

---

## 📈 Future Enhancements

- Add product category breakdowns  
- Build monthly/quarterly trend dashboards  
- Add salesperson performance scoring model  
- Integrate Python visualizations (optional)

---

## 📬 Contact

If you'd like to connect, collaborate, or discuss SQL/data projects, feel free to reach out via GitHub or LinkedIn.
