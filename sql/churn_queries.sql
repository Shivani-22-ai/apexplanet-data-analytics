-- =====================================================
-- SQL FOR DATA EXTRACTION AND ANALYSIS
-- IBM Telco Customer Churn Dataset
-- =====================================================

-- =====================================================
-- BUSINESS QUESTION 1
-- Total Customers
-- =====================================================

SELECT COUNT(*) AS total_customers
FROM customers;

-- =====================================================
-- BUSINESS QUESTION 2
-- Total Churned Customers
-- =====================================================

SELECT COUNT(*) AS churned_customers
FROM customers
WHERE [Churn Label] = 'Yes';

-- =====================================================
-- BUSINESS QUESTION 3
-- Average Monthly Charge
-- =====================================================

SELECT ROUND(AVG([Monthly Charges]),2) AS avg_monthly_charge
FROM customers;

-- =====================================================
-- BUSINESS QUESTION 4
-- Most Common Contract Type
-- =====================================================

SELECT Contract,
       COUNT(*) AS total_customers
FROM customers
GROUP BY Contract
ORDER BY total_customers DESC;

-- =====================================================
-- BUSINESS QUESTION 5
-- Most Common Payment Method
-- =====================================================

SELECT [Payment Method],
       COUNT(*) AS total_customers
FROM customers
GROUP BY [Payment Method]
ORDER BY total_customers DESC;

-- =====================================================
-- BUSINESS QUESTION 6
-- Average Tenure by Churn Status
-- =====================================================

SELECT [Churn Label],
       ROUND(AVG([Tenure Months]),2) AS avg_tenure
FROM customers
GROUP BY [Churn Label];

-- =====================================================
-- BUSINESS QUESTION 7
-- Average CLTV by Contract Type
-- =====================================================

SELECT Contract,
       ROUND(AVG(CLTV),2) AS avg_cltv
FROM customers
GROUP BY Contract
ORDER BY avg_cltv DESC;

-- =====================================================
-- BUSINESS QUESTION 8
-- Top 5 Cities by Customer Count
-- =====================================================

SELECT City,
       COUNT(*) AS total_customers
FROM customers
GROUP BY City
ORDER BY total_customers DESC
LIMIT 5;

-- =====================================================
-- BUSINESS QUESTION 9
-- Internet Service Distribution
-- =====================================================

SELECT [Internet Service],
       COUNT(*) AS total_customers
FROM customers
GROUP BY [Internet Service]
ORDER BY total_customers DESC;

-- =====================================================
-- BUSINESS QUESTION 10
-- Contract Type with Highest Churn Rate
-- =====================================================

SELECT Contract,
       COUNT(*) AS total_customers,
       SUM(CASE
             WHEN [Churn Label] = 'Yes' THEN 1
             ELSE 0
           END) AS churned_customers,
       ROUND(
           100.0 * SUM(CASE
                         WHEN [Churn Label] = 'Yes' THEN 1
                         ELSE 0
                       END) / COUNT(*),
           2
       ) AS churn_rate
FROM customers
GROUP BY Contract
ORDER BY churn_rate DESC;

-- =====================================================
-- ADVANCED SQL
-- =====================================================

-- CTE

WITH contract_stats AS (
    SELECT Contract,
           AVG([Monthly Charges]) AS avg_charge
    FROM customers
    GROUP BY Contract
)
SELECT *
FROM contract_stats
ORDER BY avg_charge DESC;

-- ROW_NUMBER()

SELECT CustomerID,
       [Total Charges],
       ROW_NUMBER() OVER (
           ORDER BY [Total Charges] DESC
       ) AS customer_rank
FROM customers;

-- RANK()

SELECT CustomerID,
       CLTV,
       RANK() OVER (
           ORDER BY CLTV DESC
       ) AS cltv_rank
FROM customers;

-- VIEW

CREATE VIEW churned_customers AS
SELECT *
FROM customers
WHERE [Churn Label] = 'Yes';

SELECT *
FROM churned_customers
LIMIT 5;