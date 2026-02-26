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


### File Descriptions

| File | Purpose |
|------|---------|
| **ChocolateSales_dataset.csv** | Raw transactional sales data |
| **ChocolateSales_schema.sql** | PostgreSQL schema (tables, data types, constraints) |
| **ChocolateSales_import.sql** | COPY/INSERT script to import the dataset into PostgreSQL |
| **ChocolateSales_queries.sql** | All SQL analysis queries |
| **README.md** | Documentation, questions, insights |

---

## 📊 Dataset Overview

The dataset contains chocolate sales transactions across multiple countries and sales representatives.

### **Columns & Definitions**

| Column | Description |
|--------|-------------|
| **Date** | Transaction date in `YYYY-MM-DD` format |
| **Product** | Full product name (e.g., *"50% Dark Bites"*, *"Smooth Silky Caramel"*) |
| **Amount** | Sales amount in USD for the transaction |
| **Boxes Shipped** | Number of boxes sold in the transaction |
| **Country** | Customer/sales country (e.g., Australia, UK, India, USA) |
| **Sales Person** | Name of the responsible sales representative |

---

## 🧠 Analysis Method

This project follows my standard SQL analysis workflow:

### **1. Column-by-Column Data Understanding**
- Validate data types (dates, numeric fields, text fields)
- Identify potential quality issues (missing values, inconsistent product names, outliers)
- Understand business meaning of each attribute
- Explore relationships (e.g., product vs. country, salesperson vs. revenue)

### **2. Generating Analysis Questions**
A structured set of questions guides the SQL work.

#### **Descriptive Questions**
- What is the total revenue?  
- How many boxes were shipped overall?  
- What are the top-selling products by revenue?  
- Which countries generate the most sales?

#### **Diagnostic Questions**
- Are there seasonal or monthly sales patterns?  
- Which products have the highest average revenue per transaction?  
- Are certain salespeople consistently outperforming others?

#### **Business Questions**
- Which country–product combinations are most profitable?  
- Which salesperson drives the highest revenue per box shipped?  
- What product categories should be prioritized for specific regions?

#### **Advanced SQL Questions**
- Rank products by total revenue using window functions  
- Calculate rolling monthly revenue  
- Identify top 3 salespeople per country  
- Segment customers by purchasing behavior (if applicable)

### **3. SQL Queries**
All SQL solutions are stored in `queries.sql`, organized by category:
- Descriptive analytics  
- Product performance  
- Salesperson performance  
- Country-level insights  
- Window function analyses  

### **4. Insights Summary**
After running the queries, insights will be documented here, including:
- Key revenue drivers  
- High-performing regions  
- Best-selling products  
- Salesperson comparisons  
- Trends and anomalies  

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
