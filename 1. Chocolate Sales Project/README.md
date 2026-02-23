# Chocolate Sales Analysis

This project is part of my **SQL_Projects** repository — a collection of hands‑on SQL analyses designed for learning, portfolio building, and demonstrating practical data skills.  
The goal of this project is to analyze chocolate sales performance across different countries, salespeople, and product categories using **SQLite** and structured SQL workflows.

---

## 📁 Project Structure

    Chocolate_Sales/
    │
    ├── ChocolateSales_dataset.csv
    ├── ChocolateSales_database.sqlite
    ├── ChocolateSales_schema.sql
    ├── ChocolateSales_queries.sql
    └── ChocolateSales_README.md

### Folder Contents Explained

| File | Purpose |
|------|---------|
| **dataset.csv** | Raw chocolate sales dataset |
| **database.sqlite** | SQLite database containing the imported dataset |
| **schema.sql** | SQL script defining the database schema (tables, types, constraints) |
| **queries.sql** | All SQL queries used for analysis |
| **README.md** | Project-level documentation (problem, approach, insights) |

---

## 📊 Project Overview

This project analyzes chocolate sales transactions across multiple countries.  
The dataset includes information about salespeople, products, shipment quantities, and revenue amounts.  
The goal is to uncover trends, performance insights, and business opportunities.

---

## 🧠 Column-by-Column Data Understanding

Below is a detailed description of each column in the dataset:

| Column | Description | Data Type | Notes |
|--------|-------------|-----------|-------|
| **Date** | Transaction date in `YYYY-MM-DD` format | TEXT/DATE | Enables time-series and seasonal analysis |
| **Product** | Full chocolate product name (e.g., “50% Dark Bites”, “Smooth Silky Caramel”) | TEXT | Useful for product-level performance insights |
| **Amount** | Sales amount in USD for the transaction | REAL | Key metric for revenue analysis |
| **Boxes Shipped** | Number of boxes sold in the transaction | INTEGER | Helps analyze volume vs. revenue |
| **Country** | Country where the sale occurred (e.g., Australia, UK, India, USA) | TEXT | Enables geographic comparisons |
| **Sales Person** | Name of the responsible sales representative (e.g., Mallorie Waber, Dennison Cross) | TEXT | Useful for salesperson performance evaluation |

---

## ❓ Key Analysis Questions

To guide the SQL analysis, I generated a comprehensive set of questions:

### **Descriptive Questions**
- How many total sales transactions are recorded?
- What is the total revenue generated?
- What is the total number of boxes shipped?
- How many unique products are sold?

### **Salesperson Performance**
- Which salesperson generated the highest revenue?
- Which salesperson shipped the most boxes?
- What is the average revenue per salesperson?

### **Country-Level Insights**
- Which country has the highest total sales?
- Which country ships the most boxes?
- What is the average revenue per transaction by country?

### **Product-Level Insights**
- Which chocolate product generates the most revenue?
- Which product has the highest shipment volume?
- What is the average revenue per box for each product?

### **Time-Based Analysis**
- What are the monthly sales trends?
- Are there seasonal peaks in chocolate sales?
- Which month has the highest revenue?

### **Advanced / Diagnostic Questions**
- Is there a correlation between boxes shipped and revenue?
- Do certain salespeople perform better in specific countries?
- Which product-country combinations are most profitable?

---

## 🛠️ Tools & Technologies

- **SQLite** — lightweight, file-based SQL engine  
- **SQL** — data cleaning, transformation, querying, and analysis  
- **VS Code + SQLite extensions** — for running and testing queries  

---

## 🧪 SQL Workflow

This project follows a structured SQL workflow:

1. **Schema Creation**  
   Defined in `schema.sql` with appropriate data types and constraints.

2. **Data Import**  
   Loaded into `database.sqlite` from `dataset.csv`.

3. **Exploratory Queries**  
   Basic counts, summaries, and distributions.

4. **Analytical Queries**  
   Joins, aggregations, window functions, and business insights.

5. **Insight Summaries**  
   Key findings documented in this README.

---

## 📈 Insights & Conclusions

*(You will fill this section after running your queries.)*

Examples of insights you may include:

- Top-performing salesperson  
- Highest-revenue product  
- Best-performing country  
- Seasonal or monthly sales trends  
- Relationship between shipment volume and revenue  

---

## 🚀 How to Use This Project

1. Open the project folder.  
2. Load `database.sqlite` using your preferred SQLite tool (VS Code recommended).  
3. Review the schema using `schema.sql`.  
4. Run the analysis using `queries.sql`.  
5. Read the insights in this README.

---

## 📬 Contact

If you’d like to connect, collaborate, or discuss data projects, feel free to reach out via GitHub or LinkedIn.
