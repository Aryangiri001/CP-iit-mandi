**Blinkit Capstone Project**

# 🚀 Blinkit Quick-Commerce SLA Diagnostic
### Predicting Delivery Delays and Identifying Operational Bottlenecks using Machine Learning

## 📌 Project Overview

This project analyzes a Quick-Commerce delivery dataset to identify the key factors influencing delivery delays and build a machine learning model capable of predicting whether an order will be delivered late.

The project combines **SQL, Python, Exploratory Data Analysis (EDA), Machine Learning, and Business Intelligence** to provide actionable insights for improving operational efficiency and customer satisfaction.

---

## 🎯 Business Problem

Quick-commerce companies promise deliveries within a short time window. However, delivery delays can negatively impact customer satisfaction and operational performance.

The objective of this project is to:

- Analyze delivery operations
- Identify factors causing late deliveries
- Predict delayed orders using Machine Learning
- Recommend business strategies to improve delivery performance

---

# 📂 Project Structure

```text
Blinkit-Capstone-Project/
│
├── data/
│   ├── Final dataset.csv
│   └── Data_Dictionary.xlsx
│
├── notebooks/
│   └── Blinkit_Analysis.ipynb
│
├── sql/
│   └── Blinkit_SQL_Queries.sql
│
├── dashboard/
│   └── Blinkit_Dashboard.twb
│
├── reports/
│   ├── Project_Charter.pdf
│   ├── Business_Memo.pdf
│   └── Final_Report.pdf
│
├── images/
│
└── README.md
```

---

# 📊 Dataset Information

The dataset contains delivery records from a simulated Quick-Commerce platform.

### Features

- Order ID
- Company
- City
- Customer Age
- Order Value
- Delivery Time
- Distance
- Items Count
- Product Category
- Payment Method
- Customer Rating
- Discount Applied
- Delivery Partner Rating

Target Variable:

**Late_Delivery**

```
0 = On Time

1 = Late Delivery
```

---

# 🛠 Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-Learn
- MySQL
- Tableau
- VS Code
- Git & GitHub

---

# 📈 Exploratory Data Analysis

The following analyses were performed:

- Missing Value Analysis
- Duplicate Check
- Delivery Time Distribution
- City-wise Orders
- Product Category Analysis
- Payment Method Analysis
- Customer Rating Analysis
- Correlation Heatmap
- Distance vs Delivery Time
- Feature Relationships

---

# 🤖 Machine Learning Pipeline

### Data Preprocessing

- Data Cleaning
- Feature Engineering
- One-Hot Encoding
- Standard Scaling
- Train-Test Split

---

## Models Used

### 1️⃣ Logistic Regression

Used as the baseline classification model.

### 2️⃣ Random Forest Classifier

Selected as the final model due to superior predictive performance.

---

# 📊 Model Performance

| Model | Accuracy |
|---------|----------|
| Logistic Regression | 97% |
| Random Forest | **98.04%** |

Random Forest achieved the best overall performance and was selected as the final model.

---

# ⭐ Feature Importance

The Random Forest model identified the following important predictors:

- City
- Distance
- Order Value
- Customer Age
- Items Count

These features significantly influence delivery delays.

---

# 💡 Business Recommendations

Based on the analysis:

- Increase delivery resources in high-risk cities.
- Improve route optimization for long-distance deliveries.
- Monitor delivery partner performance.
- Optimize inventory placement.
- Deploy predictive delay monitoring for proactive intervention.

---

# 📊 Dashboard

The Tableau dashboard includes:

- Total Orders
- Average Delivery Time
- Revenue
- Customer Ratings
- Delivery Partner Ratings
- City-wise Analysis
- Product Category Analysis
- Delivery Delay Insights

---

# 📌 Key Learnings

This project demonstrates:

- SQL for Data Analysis
- Data Cleaning
- Exploratory Data Analysis
- Feature Engineering
- Machine Learning
- Model Evaluation
- Business Intelligence
- Dashboard Development

---

# 🚀 Future Improvements

- Implement XGBoost for model comparison
- Hyperparameter Optimization
- Real-time prediction system
- Deployment using Flask/FastAPI
- Cloud deployment (AWS/Azure/GCP)

---

# 📬 Contact

**Aryan Giri**

B.Tech CSE (AI & ML)

LinkedIn: *(Add your LinkedIn URL here)*

GitHub: *(Add your GitHub Profile URL here)*

Email: *(Add your Email here)*

---

## ⭐ If you found this project useful, consider giving it a star!
