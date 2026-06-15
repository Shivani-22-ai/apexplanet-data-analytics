# ApexPlanet Data Analytics Internship

## Overview

This repository contains the projects completed as part of the **ApexPlanet Data Analytics Internship Program**.

The internship focuses on data cleaning, exploratory data analysis, SQL-based business analysis, dashboarding, statistical analysis, and machine learning fundamentals.

---

# Repository Structure

```text
apexplanet-data-analytics/
│
├── data/
│   ├── raw/
│   │   └── telco_churn.xlsx
│   │
│   ├── processed/
│   │   └── telco_cleaned.csv
│   │
│   └── telco.db
│
├── notebooks/
│   ├── 01_EDA.ipynb
│   └── 02_SQL_Analysis.ipynb
│
├── scripts/
│   └── db_utils.py
│
├── sql/
│   └── churn_queries.sql
│
└── README.md
```

---

# Dataset

**IBM Telco Customer Churn Dataset**

* 7043 customer records
* Customer demographics
* Subscription details
* Billing information
* Churn information
* Customer Lifetime Value (CLTV)

---

# Task 1: Data Cleaning & Exploratory Data Analysis

## Objectives

* Data cleaning and preprocessing
* Missing value handling
* Data type correction
* Outlier detection using IQR
* Exploratory Data Analysis (EDA)

## Analysis Performed

### Data Cleaning

* Handled missing values
* Checked duplicate records
* Corrected data types
* Performed outlier analysis
* Exported cleaned dataset

### Exploratory Data Analysis

* Statistical summary
* Histograms and boxplots
* Bar chart analysis
* Correlation heatmap
* Trend analysis

### Key Insights

* Average customer tenure is approximately 32 months.
* Month-to-month contracts are the most common subscription type.
* Electronic check is the most frequently used payment method.
* Tenure and Total Charges show a strong positive correlation.
* Long-term customers contribute higher customer lifetime value.

---

# Task 2: SQL for Data Extraction

## Objectives

* Learn SQL fundamentals
* Perform business analysis using SQL
* Integrate SQL with Python
* Build reusable SQL workflows

## SQL Concepts Covered

### Fundamentals

* SELECT
* WHERE
* ORDER BY
* LIMIT
* GROUP BY
* HAVING

### Advanced SQL

* Common Table Expressions (CTEs)
* ROW_NUMBER()
* RANK()
* Views

### Python + SQL Integration

* SQLite database creation
* Query execution using pandas.read_sql()
* Reusable database utility script

## Business Questions Answered

* Total customers
* Churned customers
* Average monthly charges
* Contract distribution
* Payment method analysis
* Average tenure by churn status
* CLTV by contract type
* Top customer cities
* Internet service distribution
* Contract-wise churn rate

## Key Findings

* Month-to-month contracts exhibit the highest churn rate.
* Customers with longer tenure generate higher total revenue.
* Long-term contracts show stronger customer retention.
* Electronic check is the most common payment method.
* Customer lifetime value increases with retention duration.

---

# Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* SQLite
* SQL
* Jupyter Notebook

---

# Internship Program

ApexPlanet Software Pvt. Ltd.

Completed Tasks:

* Task 1 – Foundational Setup & Exploratory Data Analysis
* Task 2 – SQL for Data Extraction

Upcoming:

* Task 3 – Data Visualization & Dashboarding
* Task 4 – Advanced Analytics & Machine Learning
* Task 5 – Final Report & Automation

