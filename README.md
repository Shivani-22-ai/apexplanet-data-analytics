# ApexPlanet Data Analytics Internship

## Overview

This repository contains projects completed as part of the ApexPlanet Data Analytics Internship Program. The work focuses on data cleaning, exploratory data analysis, SQL-based business analysis, data visualization, and dashboard development using real-world customer churn data.

---

## Repository Structure

apexplanet-data-analytics/

├── data/

│ ├── raw/

│ ├── processed/

│ └── telco.db

├── notebooks/

│ ├── 01_EDA.ipynb

│ ├── 02_SQL_Analysis.ipynb

│ └── 03_Visualizations.ipynb

├── dashboards/

│ └── telco_dashboard.pbix

├── scripts/

│ └── db_utils.py

├── sql/

│ └── churn_queries.sql

├── visualizations/

│ ├── *.png

│ └── *.html

├── reports/

└── README.md

---

## Dataset

IBM Telco Customer Churn Dataset

* 7043 customer records
* Customer demographics
* Service subscriptions
* Billing information
* Customer churn details
* Customer Lifetime Value (CLTV)

---

# Task 1: Data Cleaning and Exploratory Data Analysis

### Objectives

* Data cleaning and preprocessing
* Missing value handling
* Data type conversion
* Outlier detection
* Exploratory Data Analysis (EDA)

### Analysis Performed

* Dataset inspection and summary statistics
* Missing value treatment
* Duplicate record verification
* Data type corrections
* Outlier analysis using IQR
* Histograms and boxplots
* Correlation analysis

### Key Insights

* Average customer tenure is approximately 32 months.
* Average monthly charge is approximately 64.76.
* Month-to-month contracts are the most common contract type.
* Electronic check is the most frequently used payment method.
* Tenure and Total Charges show a strong positive correlation.

---

# Task 2: SQL for Data Extraction and Analysis

### Objectives

* Learn SQL fundamentals
* Perform business-oriented data analysis
* Integrate SQL with Python
* Create reusable SQL workflows

### SQL Concepts Used

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* Common Table Expressions (CTEs)
* ROW_NUMBER()
* RANK()
* Views

### Business Questions Answered

* Total customers
* Churned customers
* Average monthly charges
* Contract distribution
* Payment method distribution
* CLTV analysis
* Customer city analysis
* Churn rate by contract type

### Key Findings

* Month-to-month contracts have the highest churn rate.
* Long-term customers generate higher revenue and CLTV.
* Customer retention improves significantly with longer contracts.

---

# Task 3: Data Visualization and Dashboarding

### Objectives

* Create professional visualizations using Python
* Develop interactive charts using Plotly
* Build an interactive Power BI dashboard

### Tools Used

* Matplotlib
* Seaborn
* Plotly
* Power BI

### Visualizations Created

#### Matplotlib

* Monthly Charges Distribution
* Contract Distribution
* Tenure vs Total Charges
* Average CLTV by Tenure

#### Seaborn

* Correlation Heatmap
* Monthly Charges by Churn Status
* Pairplot Analysis

#### Plotly

* Interactive Contract Distribution
* Interactive Churn Distribution

### Dashboard Features

* KPI Cards

  * Total Customers
  * Churned Customers
  * Average Monthly Charges
  * Average CLTV

* Contract Distribution Analysis

* Churn by Contract Type

* Payment Method Distribution

* Internet Service Distribution

* Top Customer Cities

* Interactive Filters (Slicers)

### Key Insights

* Month-to-month customers exhibit the highest churn rates.
* Fiber optic customers form the largest internet service segment.
* Customer retention is strongly associated with contract duration.
* Major cities contribute a significant share of the customer base.

---

## Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Plotly
* SQLite
* SQL
* Power BI
* Jupyter Notebook

---

## Internship Progress

### Completed

* Task 1 – Data Cleaning and Exploratory Data Analysis
* Task 2 – SQL for Data Extraction and Analysis
* Task 3 – Data Visualization and Dashboarding

### Upcoming

* Task 4 – Advanced Analytics and Machine Learning
* Task 5 – Final Report and Automation
