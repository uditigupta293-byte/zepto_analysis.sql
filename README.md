# 🛒 Zepto Data Analysis (SQL Project)

## 📌 Project Overview

This project analyzes a Zepto product dataset using SQL to uncover insights related to pricing, discounts, inventory status, and product distribution.

The goal is to simulate real-world business analysis by identifying patterns that can help improve pricing strategies, inventory management, and customer value.

---

## 🛠️ Tools & Technologies

* MySQL
* SQL (Joins, Aggregations, CASE statements)
* Data Cleaning & Transformation

---

## 📂 Dataset Description

The dataset contains product-level information including:

* SKU ID
* Product Name
* Category
* MRP (Maximum Retail Price)
* Discount Percentage
* Discounted Selling Price
* Available Quantity
* Product Weight (grams)
* Stock Availability

---

## 🧹 Data Cleaning Performed

* Removed records where **MRP = 0** (invalid pricing data)
* Converted price values from **paise to rupees**
* Checked for NULL values across all important columns
* Identified duplicate product entries

---

## 📊 Key Analysis & Queries

### 1. Inventory Analysis

* Counted products that are **in stock vs out of stock**
* Identified **high-value products (MRP > 300) that are out of stock**

👉 Business Insight:
High-priced products being out of stock may indicate **lost revenue opportunities**

---

### 2. Product Duplication Check

* Detected products appearing multiple times using SKU count

👉 Insight:
Possible duplication or variation in SKUs for similar products

---

### 3. Pricing & Discount Analysis

* Identified **top 10 products with highest discounts**
* Analyzed products where:

  * MRP > 500
  * Discount < 10%

👉 Insight:
Some premium products are not competitively discounted

---

### 4. Category-Level Insights

* Calculated **average discount per category**
* Ranked top categories offering highest discounts

👉 Insight:
Helps understand **which categories drive promotional strategies**

---

### 5. Value for Money Analysis

* Computed **price per gram (PPG)** for products with weight ≥ 100g

👉 Insight:
Customers can identify **better value products based on cost efficiency**

---

### 6. Product Segmentation by Weight

* Categorized products into:

  * Low weight
  * Medium weight
  * Bulk

👉 Insight:
Useful for logistics, packaging, and pricing strategies

---

## 📈 Key Learnings

* Hands-on experience in **data cleaning using SQL**
* Strong understanding of **aggregations, filtering, and CASE statements**
* Ability to derive **business insights from raw data**
* Improved thinking in terms of **data-driven decision making**

---

## 🚀 Future Improvements

* Build a **Power BI / Tableau dashboard** for visualization
* Perform **customer-level analysis (if data available)**
* Apply **advanced SQL (window functions, ranking)**
* Integrate with Python for deeper analysis

---

## 📁 Project Files

* `zepto_analysis.sql` → All SQL queries used in analysis
* `dataset.csv` (optional)

---

## 💡 Conclusion

This project demonstrates how SQL can be used not just for querying data, but for extracting meaningful business insights that can support pricing, inventory, and marketing decisions.

---
