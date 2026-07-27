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

# 🧹 Data Integrity & Quality Report

Before performing analysis and training machine learning models, the dataset was thoroughly examined to ensure its quality, consistency, and reliability.

Data quality is one of the most important phases of any analytics project because machine learning models are only as good as the data they are trained on.

---

## Data Quality Assessment

| Data Quality Check | Status | Action Taken |
|--------------------|--------|--------------|
| Missing Values | ✅ Checked | No missing values found |
| Duplicate Records | ✅ Checked | Duplicate records removed (if present) |
| Data Types | ✅ Validated | Verified and corrected where required |
| Outliers | ✅ Inspected | Reviewed during Exploratory Data Analysis |
| Feature Consistency | ✅ Verified | Column names and values validated |
| Target Variable | ✅ Created | Engineered Late_Delivery feature |

---

## Data Preprocessing Pipeline

```

Raw Dataset

↓

Missing Value Check

↓

Duplicate Check

↓

Data Type Validation

↓

Exploratory Data Analysis

↓

Feature Engineering

↓

One-Hot Encoding

↓

Feature Scaling (Logistic Regression Only)

↓

Train-Test Split

↓

Machine Learning

```

---

## Why Data Cleaning Matters

Poor-quality data can result in:

- Incorrect business insights
- Reduced model accuracy
- Data leakage
- Misleading visualizations

Performing proper preprocessing ensures reliable analytics and improves the performance of predictive models.

---

# 🗄 SQL Business Analysis

SQL was used to explore the dataset before machine learning.

The objective was to answer business-oriented questions related to delivery operations, customer behaviour, and operational efficiency.

---

## SQL Analysis Performed

| Analysis | Business Purpose |
|-----------|------------------|
| Orders by City | Identify high-demand locations |
| Average Delivery Time | Measure operational efficiency |
| Average Order Value | Understand customer purchasing behaviour |
| Orders by Product Category | Identify high-volume product categories |
| Payment Method Distribution | Understand customer payment preferences |
| Customer Rating Analysis | Evaluate service quality |
| Delivery Partner Ratings | Assess delivery partner performance |

---

## Sample SQL Query

```sql
SELECT City,
COUNT(*) AS Total_Orders,
AVG(Delivery_Time_Min) AS Avg_Delivery_Time
FROM orders
GROUP BY City
ORDER BY Avg_Delivery_Time DESC;
```

---

## Business Insight

SQL analysis identified cities with comparatively longer delivery times, allowing operational teams to focus resources on regions experiencing higher delays.

---

# 📊 Operational Summary Statistics

Key operational metrics were calculated to understand the overall health of the delivery ecosystem.

| KPI | Description |
|------|-------------|
| Total Orders | Total deliveries analyzed |
| Average Delivery Time | Average time required to complete deliveries |
| Average Order Value | Average customer spending |
| Average Customer Rating | Customer satisfaction indicator |
| Average Delivery Partner Rating | Delivery quality indicator |
| Late Delivery Percentage | Percentage of delayed deliveries |

---

## Operational Objective

These KPIs provide management with a high-level overview of operational performance and help identify areas requiring improvement.

---

# 📈 Exploratory Data Analysis

Exploratory Data Analysis (EDA) was conducted to discover hidden patterns, relationships, and operational trends before building predictive models.

The analysis also helped validate assumptions, identify anomalies, and support feature engineering decisions.

---

# 🤖 Machine Learning Pipeline

After completing data preprocessing and exploratory analysis, multiple machine learning models were developed to predict whether an order would be delivered on time or late.

Instead of relying on a single algorithm, multiple classification models were trained, evaluated, and compared to identify the most effective solution for the business problem.

---

## Machine Learning Workflow

```mermaid
flowchart TD
A[Raw Dataset] --> B[Data Cleaning]
B --> C[Exploratory Data Analysis]
C --> D[Feature Engineering]
D --> E[One-Hot Encoding]
E --> F[Feature Scaling (Logistic Regression)]
E --> G[Train-Test Split]
G --> H[Logistic Regression]
G --> I[Random Forest]
I --> J[Hyperparameter Tuning]
J --> K[XGBoost]
K --> L[Model Comparison]
L --> M[Business Recommendations]
```

---

## Machine Learning Objective

The primary objective was to build a predictive model capable of classifying delivery orders into:

- **0 → On-Time Delivery**
- **1 → Late Delivery**

This prediction enables operations teams to identify high-risk deliveries before dispatch and take proactive actions to reduce SLA violations.

---

# 📘 Logistic Regression

Logistic Regression was selected as the baseline classification model because of its simplicity, interpretability, and efficiency.

Although it assumes a linear relationship between features and the target variable, it provides a strong benchmark for comparing more advanced ensemble models.

---

## Why Logistic Regression?

- Fast training time
- Easy to interpret
- Suitable baseline classifier
- Performs well on linearly separable data

---

## Data Preparation

Before training the model:

- Missing values were handled
- Categorical variables were One-Hot Encoded
- Numerical features were standardized using StandardScaler
- Dataset was split into Training and Testing sets

---

## Model Evaluation

The model was evaluated using:

- Accuracy
- Precision
- Recall
- F1-Score
- Confusion Matrix

---

## Business Interpretation

Logistic Regression established the baseline performance for this project.

Although effective, its linear decision boundary limited its ability to capture complex relationships within the operational delivery data.

This motivated the exploration of ensemble learning techniques.

---

# 🌳 Random Forest Classifier

Random Forest is an ensemble learning algorithm that combines multiple Decision Trees to improve prediction accuracy while reducing overfitting.

Unlike a single Decision Tree, Random Forest aggregates predictions from hundreds of trees, resulting in more robust and reliable classifications.

---

## Why Random Forest?

- Handles non-linear relationships
- Reduces overfitting through bagging
- Performs well on structured datasets
- Provides Feature Importance scores

---

## Model Performance

| Metric | Score |
|---------|-------|
| Accuracy | **98.04%** |
| Precision | **0.89** |
| Recall | **0.95** |
| F1-Score | **0.92** |

---

## Feature Importance

One of the major advantages of Random Forest is its ability to rank the importance of each feature.

### Top Predictive Features

- Distance_Km
- City
- Customer Rating
- Product Category
- Delivery Partner Rating

---

## Business Interpretation

The model revealed that operational factors such as delivery distance and city location significantly influence delivery delays.

These insights can support better rider allocation and route optimization.

---

# 🌳 Random Forest Classifier

Random Forest is an ensemble learning algorithm that combines multiple Decision Trees to improve prediction accuracy while reducing overfitting.

Unlike a single Decision Tree, Random Forest aggregates predictions from hundreds of trees, resulting in more robust and reliable classifications.

---

## Why Random Forest?

- Handles non-linear relationships
- Reduces overfitting through bagging
- Performs well on structured datasets
- Provides Feature Importance scores

---

## Model Performance

| Metric | Score |
|---------|-------|
| Accuracy | **98.04%** |
| Precision | **0.89** |
| Recall | **0.95** |
| F1-Score | **0.92** |

---

## Feature Importance

One of the major advantages of Random Forest is its ability to rank the importance of each feature.

### Top Predictive Features

- Distance_Km
- City
- Customer Rating
- Product Category
- Delivery Partner Rating

---

## Business Interpretation

The model revealed that operational factors such as delivery distance and city location significantly influence delivery delays.

These insights can support better rider allocation and route optimization.

---

# ⚙️ Hyperparameter Tuning

To improve the Random Forest model, GridSearchCV was used to identify the optimal combination of hyperparameters.

Hyperparameter tuning helps maximize predictive performance while minimizing overfitting.

---

## Parameters Optimized

- Number of Trees (`n_estimators`)
- Maximum Tree Depth (`max_depth`)
- Minimum Samples Split (`min_samples_split`)
- Minimum Samples Leaf (`min_samples_leaf`)

---

## Cross Validation

5-Fold Cross Validation was performed during tuning to ensure that the model generalized well across different subsets of the training data.

---

## Benefits

- Improved generalization
- Reduced overfitting
- More stable predictions
- Better model reliability

---

Hyperparameter tuning resulted in a more optimized Random Forest model before comparing it with XGBoost.

---

# 🚀 XGBoost Classifier (Final Selected Model)

XGBoost (Extreme Gradient Boosting) is an advanced ensemble learning algorithm based on gradient boosting.

It builds trees sequentially, where each new tree attempts to correct the errors made by previous trees.

Because of its high predictive accuracy, efficiency, and robustness, XGBoost has become one of the most widely used algorithms in machine learning competitions and real-world applications.

---

## Why XGBoost?

- Handles complex relationships efficiently
- Built-in regularization reduces overfitting
- Fast and scalable
- Excellent performance on structured datasets
- Industry-standard boosting algorithm

---

## Model Performance

| Metric | Score |
|---------|-------|
| Accuracy | **98.28%** |
| Precision | **0.93** |
| Recall | **0.92** |
| F1-Score | **0.93** |

---

## Feature Importance

The XGBoost model identified the following variables as the most influential predictors:

- Distance_Km
- City
- Product Category
- Customer Rating
- Delivery Partner Rating

---

## Business Interpretation

The superior performance of XGBoost demonstrates its ability to model complex operational relationships and accurately identify deliveries at risk of delay.

This makes it highly suitable for deployment in real-time delivery prediction systems.

---

# 📊 Model Comparison

Three different machine learning models were trained and evaluated.

| Model | Accuracy | Precision | Recall | F1-Score |
|--------|----------|-----------|---------|----------|
| Logistic Regression | *(Add Your Result)* | *(Add)* | *(Add)* | *(Add)* |
| Random Forest | **98.04%** | **0.89** | **0.95** | **0.92** |
| XGBoost | **98.28%** | **0.93** | **0.92** | **0.93** |

---

## Observations

- Logistic Regression provided a reliable baseline.
- Random Forest significantly improved predictive performance by capturing non-linear relationships.
- XGBoost achieved the highest overall performance, offering the best balance between precision, recall, and F1-score.

---

## Final Selected Model

🏆 **XGBoost**

### Why?

- Highest Accuracy
- Highest Precision
- Highest F1-Score
- Excellent Generalization
- Robust Against Overfitting
- Suitable for Real-Time Deployment

---

# ⭐ Key Predictive Features

The machine learning models consistently identified several features as strong predictors of delivery delays.

| Rank | Feature | Business Impact |
|------|---------|-----------------|
| 1 | Distance_Km | Longer routes increase delivery risk |
| 2 | City | Operational efficiency differs by location |
| 3 | Product_Category | Preparation time varies by category |
| 4 | Customer_Rating | Reflects service quality trends |
| 5 | Delivery_Partner_Rating | Indicates delivery execution performance |

---

These findings provide valuable insights that can guide operational improvements beyond predictive modeling.

---

# 📋 Executive Action Plan

Based on the SQL analysis, Exploratory Data Analysis, and Machine Learning results, several actionable recommendations were identified to improve Blinkit's delivery performance.

---

## 🚀 Immediate Actions (0–3 Months)

### 1. Optimize Rider Allocation

- Increase rider availability during peak demand hours.
- Dynamically assign riders based on predicted delivery risk.

**Expected Outcome**

- Reduced late deliveries
- Improved delivery efficiency

---

### 2. Improve Route Planning

Use optimized route selection for long-distance deliveries.

**Expected Outcome**

- Lower travel time
- Better SLA compliance

---

### 3. Monitor High-Risk Cities

Allocate additional operational resources to cities with consistently higher delivery delays.

**Expected Outcome**

- Balanced delivery performance across regions

---

## 📈 Medium-Term Actions (3–6 Months)

### Improve Inventory Placement

Place frequently ordered products closer to customers using warehouse demand analysis.

**Expected Outcome**

- Faster order fulfillment
- Reduced delivery time

---

### Improve Partner Performance Monitoring

Continuously evaluate delivery partner performance using operational KPIs.

**Expected Outcome**

- Higher service quality
- Improved customer experience

---

## 🌍 Long-Term Strategy (6–12 Months)

Deploy the trained XGBoost model into the delivery management system to predict delivery delays before dispatch.

Potential applications include:

- Rider allocation
- Dynamic route optimization
- Delay alerts
- Resource planning

---

# 📊 Business Intelligence Dashboard

A Tableau dashboard was developed to provide an interactive visualization of Blinkit's operational performance.

---

## Dashboard Features

✔ Executive KPIs

✔ Delivery Performance

✔ City-wise Analysis

✔ Product Category Analysis

✔ Customer Rating Trends

✔ Payment Method Analysis

✔ Machine Learning Insights

---

## Dashboard Benefits

The dashboard enables stakeholders to:

- Monitor delivery performance
- Track operational KPIs
- Identify high-delay regions
- Analyze customer behavior
- Support strategic decision-making

---

# 🛠️ Technologies Used

| Category | Tools & Technologies |
|----------|----------------------|
| Programming Language | Python |
| Database | MySQL |
| Data Manipulation | Pandas, NumPy |
| Data Visualization | Matplotlib, Seaborn |
| Machine Learning | Scikit-Learn, XGBoost |
| Dashboard | Tableau |
| Development Environment | Jupyter Notebook |
| Version Control | Git & GitHub |

---

# 📂 Repository Structure

```
Blinkit-Quick-Commerce-SLA-Diagnostic/
│
├── data/
│   ├── raw_data.csv
│   └── cleaned_data.csv
│
├── notebooks/
│   ├── Data_Cleaning.ipynb
│   ├── EDA.ipynb
│   ├── Feature_Engineering.ipynb
│   └── Machine_Learning.ipynb
│
├── sql/
│   └── Blinkit_SQL_Analysis.sql
│
├── dashboard/
│   └── Blinkit_Tableau_Dashboard.twb
│
├── images/
│   ├── workflow.png
│   ├── dashboard_preview.png
│   ├── delivery_time_distribution.png
│   ├── orders_by_city.png
│   ├── product_category.png
│   ├── payment_method.png
│   ├── distance_vs_delivery_time.png
│   ├── correlation_heatmap.png
│   ├── confusion_matrix_lr.png
│   ├── confusion_matrix_rf.png
│   ├── confusion_matrix_xgb.png
│   ├── feature_importance_rf.png
│   └── feature_importance_xgb.png
│
├── reports/
│   └── Project_Report.pdf
│
├── requirements.txt
│
├── README.md
│
└── LICENSE
```

---

# ⚙️ Installation

Clone the repository

```bash
git clone https://github.com/yourusername/Blinkit-Quick-Commerce-SLA-Diagnostic.git
```

Move into the project directory

```bash
cd Blinkit-Quick-Commerce-SLA-Diagnostic
```

Install dependencies

```bash
pip install -r requirements.txt
```

Launch Jupyter Notebook

```bash
jupyter notebook
```

Run the notebooks sequentially.

---

# 🚀 Future Enhancements

The project can be extended with several advanced capabilities.

## Planned Improvements

- Real-time delivery prediction API using FastAPI
- Interactive Streamlit web application
- Deep Learning model comparison
- Automated model retraining pipeline
- Cloud deployment using AWS or Azure
- Real-time dashboard integration
- Time-series forecasting for demand prediction
- Explainable AI using SHAP values

---

# 🙏 Acknowledgements

This project was developed as part of my learning journey in Data Analytics and Machine Learning.

Special thanks to the open-source community and the developers of Python, Scikit-Learn, XGBoost, Tableau, and other tools that made this project possible.

---

# 🎯 Conclusion

This project demonstrates a complete end-to-end Data Analytics and Machine Learning workflow, beginning with raw operational data and progressing through data cleaning, SQL analysis, exploratory data analysis, feature engineering, predictive modeling, and business intelligence dashboarding.

Three machine learning models—**Logistic Regression**, **Random Forest**, and **XGBoost**—were developed and evaluated to predict delivery delays. After comprehensive performance comparison, **XGBoost** emerged as the best-performing model, achieving an accuracy of **98.28%** with a balanced Precision, Recall, and F1-Score.

Beyond predictive modeling, the project translated technical findings into practical business recommendations, including route optimization, rider allocation, inventory planning, and predictive dispatch strategies.

By combining SQL, Python, Machine Learning, and Tableau, this project demonstrates both technical proficiency and business problem-solving skills, making it suitable for real-world analytics and machine learning applications.

---

## ⭐ If you found this project useful, consider giving it a star!

Thank you for visiting this repository.

Happy Learning! 🚀





