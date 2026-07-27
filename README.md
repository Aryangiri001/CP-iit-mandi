<div align="center">

# 📊 Blinkit Quick-Commerce SLA Diagnostic

### Predicting Delivery Delays & Identifying Operational Bottlenecks using SQL, Python, Machine Learning & Tableau

![Python](https://img.shields.io/badge/Python-3.11-blue?style=for-the-badge&logo=python)
![SQL](https://img.shields.io/badge/MySQL-Database-orange?style=for-the-badge&logo=mysql)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-black?style=for-the-badge&logo=pandas)
![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-Machine%20Learning-orange?style=for-the-badge&logo=scikitlearn)
![XGBoost](https://img.shields.io/badge/XGBoost-Gradient%20Boosting-red?style=for-the-badge)
![Tableau](https://img.shields.io/badge/Tableau-Dashboard-blue?style=for-the-badge&logo=tableau)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?style=for-the-badge&logo=github)

---

## 🚀 End-to-End Data Analytics & Machine Learning Project

**From raw operational data to executive business recommendations**

Built using **SQL, Python, Exploratory Data Analysis (EDA), Machine Learning, XGBoost, and Tableau Dashboarding**

</div>

---


# 📈 Live Interactive Dashboard

Explore the interactive Tableau dashboard below.

🔗 **Live Dashboard**

> *(Add your Tableau Public link here)*

---

### Dashboard Preview

> *(Insert Dashboard Screenshot Here)*

![Dashboard](images/dashboard_preview.png)

---

### Dashboard Features

✅ Executive KPIs

✅ Delivery Performance Analysis

✅ City-wise Operational Insights

✅ Product Category Analysis

✅ Customer Behaviour

✅ Machine Learning Insights

---

# 📌 Executive Summary

## Project Scope

A comprehensive analytics and machine learning study was conducted on **54,499 Blinkit delivery records** to identify operational bottlenecks, understand delivery behaviour, and predict delayed deliveries before dispatch.

The project combines **SQL**, **Python**, **Machine Learning**, and **Business Intelligence** to transform raw delivery data into actionable operational insights.

---

## Business Objective

The primary objective was to answer three business questions:

- Why are deliveries getting delayed?
- Which operational factors contribute most to SLA breaches?
- Can machine learning predict delayed deliveries before they occur?

---

## Executive Highlights

| Metric | Result |
|---------|---------|
| Total Records | **54,499** |
| Features | **13** |
| Machine Learning Models | **3** |
| Final Model | **XGBoost** |
| Final Accuracy | **98.28%** |
| Final F1 Score | **0.93** |

---

## Key Findings

✔ Delivery distance significantly impacts delivery delays.

✔ Certain cities consistently experience longer delivery times.

✔ Product category influences fulfillment duration.

✔ Customer ratings show correlation with delivery performance.

✔ XGBoost achieved the highest predictive performance among all evaluated models.

---

## Business Impact

The developed predictive model can assist operations teams by:

- Identifying high-risk deliveries before dispatch.
- Optimizing rider allocation.
- Improving route planning.
- Reducing SLA violations.
- Enhancing customer satisfaction.

---

# 🎯 Business Problem

Quick-commerce platforms promise ultra-fast deliveries to customers.

However, operational challenges such as traffic congestion, delivery distance, inventory availability, rider allocation, and demand spikes often result in delayed deliveries.

Late deliveries negatively affect:

- Customer Satisfaction
- Operational Efficiency
- Brand Reputation
- Customer Retention
- SLA Compliance

The organization requires a data-driven solution capable of identifying operational bottlenecks while proactively predicting delayed deliveries.

---

# 🎯 Project Objectives

The project aims to:

- Analyze Blinkit delivery operations using SQL.
- Perform comprehensive Exploratory Data Analysis.
- Discover operational bottlenecks.
- Engineer predictive features.
- Train multiple Machine Learning models.
- Compare model performance.
- Select the best predictive model.
- Generate actionable business recommendations.
- Visualize insights through Tableau dashboards.

---

# 📂 Dataset Overview

The dataset contains operational delivery records collected from Blinkit's quick-commerce ecosystem.

| Property | Value |
|-----------|---------|
| Domain | Quick-Commerce |
| Records | 54,499 |
| Features | 13 |
| Dataset Type | Structured CSV |
| Target Variable | Late_Delivery |

---

## Dataset Features

- Order_ID
- Company
- City
- Customer_Age
- Order_Value
- Delivery_Time_Min
- Distance_Km
- Items_Count
- Product_Category
- Payment_Method
- Customer_Rating
- Discount_Applied
- Delivery_Partner_Rating

---

## Target Variable

A new target feature was engineered.

```
Late_Delivery

0 → On-Time Delivery

1 → Late Delivery
```

The target variable was created based on delivery time threshold rules to transform the business problem into a binary classification task.

---



