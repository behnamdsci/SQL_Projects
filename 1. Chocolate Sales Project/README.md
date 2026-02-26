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



## 📊Dataset Overview
The dataset contains chocolate sales transactions across multiple countries and sales representatives.

### Columns & Definitions

| Column | Description |
|--------|-------------|
| **Date** | Transaction date in `YYYY-MM-DD` format |
| **Product** | Full product name |
| **Amount** | Sales amount in USD for the transaction |
| **Boxes Shipped** | Number of boxes sold in the transaction |
| **Country** | Customer or sales country |
| **Sales Person** | Name of the responsible sales representative |

---

## 🧠 Analysis Method

### 1. Data Cleaning and Validation

#### 1.1 Format Validation for All Columns
Each column is checked to ensure it follows the correct data type and formatting rules:
- **Date** must follow the `YYYY-MM-DD` format and represent valid calendar dates.
- **Product** must contain valid text values without numeric-only or corrupted entries.
- **Amount** must be numeric with two decimal places and free of symbols or text.
- **Boxes Shipped** must be an integer value without decimals or non-numeric characters.
- **Country** must contain alphabetic text representing valid country names.
- **Sales Person** must contain valid name strings, not numbers or empty values.

This ensures the dataset loads correctly into PostgreSQL and supports accurate querying.

#### 1.2 Removing Duplicates
Duplicate detection focuses on identifying rows that represent the same real-world transaction. Duplicates are checked using a combination of key identifying fields:
- **Date**
- **Product**
- **Country**
- **Sales Person**

If multiple rows share the same values for these columns, they are reviewed to determine whether they represent accidental duplicate entries. The **Amount** and **Boxes Shipped** values are compared to confirm whether the duplicates are true errors or legitimate repeated orders. Confirmed duplicates are removed to prevent inflated revenue or shipment totals.

#### 1.3 Searching for Missing Values
Each column is scanned for NULL or empty values:
- **Date** missing values disrupt time-based analysis.
- **Product** missing values prevent product-level grouping.
- **Amount** missing values distort revenue calculations.
- **Boxes Shipped** missing values affect volume analysis.
- **Country** missing values break regional comparisons.
- **Sales Person** missing values impact performance evaluation.

Depending on severity, missing values may be corrected, categorized (e.g., “Unknown”), or removed.

#### 1.4 Text Standardization for Text Columns
Text fields are standardized to ensure consistent grouping and avoid splitting categories:
- **Product** names are cleaned for casing, spacing, and spelling consistency.
- **Country** names are normalized to a single format (e.g., “USA” vs. “United States”).
- **Sales Person** names are standardized for consistent capitalization and spacing.

This prevents the same category from appearing multiple times due to formatting differences.

#### 1.5 Range Check for Numeric Columns
Numeric fields are validated to ensure values fall within realistic business ranges:
- **Amount** must be non-negative; unusually high values are reviewed for potential data entry errors.
- **Boxes Shipped** must be positive integers; extremely large quantities are checked for accuracy.

Range checks help detect outliers, typos, or corrupted data that could distort analysis.

### 2. Descriptive Analysis

- **Total Sales:**
- **Total Boxes Shipped:**
- **Number of Transactions:**
- **Best-Selling Product (by Revenue):**
- **Best-Selling Product (by Volume):**
- **Top Sales Person (by Revenue):**
- **Top Sales Person (by Volume):**
- **Top Country (by Revenue):**
- **Top Country (by Volume):**
- **Average Revenue per Transaction:**
- **Average Boxes per Transaction:**
- **Monthly Sales Trend:**
- **Product Transaction Count:**
- **Salesperson Transaction Count:**

### 3. Column Combinations and Relationship Exploration

#### 3.1 Date × Product
- What is the monthly revenue for each product?
- How many boxes are shipped per product each month?
- Which product is the best‑selling in each month?
- Do any products show seasonal sales patterns?
- How does each product’s revenue trend change over time?

#### 3.2 Date × Country
- What is the monthly revenue for each country?
- How many boxes are shipped per country each month?
- Which country performs best each month?
- Do countries show different seasonal demand patterns?
- How does each country’s revenue trend change over time?

#### 3.3 Date × Sales Person
- What is the monthly revenue generated by each salesperson?
- How many boxes does each salesperson ship per month?
- Who is the top salesperson each month?
- How consistent is each salesperson’s performance over time?
- How does each salesperson’s revenue trend change over time?

#### 3.4 Date × Boxes Shipped / Amount
- What is the monthly average number of boxes per transaction?
- What is the monthly average revenue per transaction?
- How do total monthly boxes compare to total monthly revenue?
- Does the relationship between volume and revenue change over time?
- Which months show unusually high or low order sizes?

#### 3.5 Product × Country
- Which products generate the most revenue in each country?
- Which products ship the most boxes in each country?
- Which country is the top market for each product?
- Do product preferences differ across countries?
- Are certain products consistently strong or weak across all regions?

#### 3.6 Product × Sales Person
- Which salesperson sells each product the most?
- Which products contribute most to each salesperson’s revenue?
- Do salespeople specialize in certain products?
- Which salesperson achieves the highest volume for each product?
- Are there products that no salesperson performs well with?

#### 3.7 Country × Sales Person
- Which salesperson performs best in each country?
- Which countries generate the most revenue for each salesperson?
- Do salespeople focus on specific regions?
- Are there countries where multiple salespeople compete closely?
- Which salesperson has the widest geographic coverage?

#### 3.8 Amount × Boxes Shipped
- How does revenue relate to the number of boxes shipped?
- Which transactions have high revenue but low box counts?
- Which transactions have high box counts but low revenue?
- What is the revenue per box across different products?
- Are there patterns indicating bulk‑order discounts or premium pricing?


### 4. Insights Summary 

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
