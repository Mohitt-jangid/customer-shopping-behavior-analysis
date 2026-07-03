# Customer Shopping Behavior Analysis

## About the Project

This project analyzes customer shopping behavior using Python, PostgreSQL, SQL, and Power BI. The main goal is to understand customer purchasing patterns and answer business questions that can help a retail business make better decisions.

The project follows a complete data analytics process, starting with data cleaning in Python, business analysis in SQL, and ending with an interactive Power BI dashboard.

---

## Business Problem

A retail company wants to understand its customers better. The company wants to know how customers spend money, which products perform well, and which customer groups generate the highest revenue.

The insights from this project can help management improve marketing strategies, product planning, and customer engagement.

---

## Project Objective

The objective of this project is to analyze customer shopping data and provide business insights by using Python, SQL, and Power BI.

---

## Tools Used

- Python
- Pandas
- PostgreSQL
- SQL
- Power BI
- DAX

---

## Dataset

The dataset contains customer shopping transactions collected from a retail store.

It contains information about:

- Customer demographics
- Product categories
- Purchase amount
- Season
- Subscription status
- Shipping type
- Payment method
- Product ratings
- Previous purchases

---

## Project Workflow

### Step 1 - Data Cleaning (Python)

The dataset was cleaned before starting the analysis.

The following tasks were completed:

- Loaded the dataset into Python
- Checked missing values
- Verified data types
- Created Age Group categories
- Removed unnecessary columns
- Exported the cleaned dataset
- Loaded the cleaned data into PostgreSQL

---

### Step 2 - Business Analysis (SQL)

SQL was used to answer different business questions.

The following analyses were performed:

- Total revenue by gender
- Customers who used discounts and still spent above the average purchase amount
- Top 5 products with the highest average rating
- Average purchase amount for Standard and Express shipping
- Revenue and average purchase amount by subscription status
- Products with the highest percentage of discounted purchases
- Customer segmentation based on previous purchases
- Top 3 most purchased products within each category
- Relationship between repeat buyers and subscriptions
- Payment methods used for above-average purchase amounts

---

### Step 3 - Dashboard Development (Power BI)

The final dashboard was created in Power BI to present the analysis in a clear and interactive way.

The dashboard includes KPI cards and visualizations that answer the main business questions.

---

## Dashboard Preview

<img width="881" height="680" alt="Screenshot 2026-07-03 185803" src="https://github.com/user-attachments/assets/c3e5aba3-c99d-4a5b-b8f4-927717ed9aa8" />


## Dashboard Business Questions

The dashboard answers the following business questions:

1. Which age group generates the highest revenue?

2. Which product categories should management prioritize based on revenue, customer reviews, and purchase volume?

3. Which season should management prioritize for inventory and marketing based on total revenue?

4. Which products generate the highest revenue within each category?

5. How is total revenue distributed between subscribers and non-subscribers?

6. Which gender generates the highest revenue?

---

## Dashboard KPIs

- Total Revenue
- Total Purchases
- Average Purchase Amount
- Average Review Rating
- Subscription Rate

---

## Key Findings

- Customers aged 31–45 generated the highest revenue.
- Clothing was the highest revenue-generating product category.
- Fall generated the highest total revenue.
- Male customers contributed more revenue than female customers.
- A small number of products generated most of the revenue within each category.
- Revenue was distributed between subscribers and non-subscribers, helping evaluate customer value.

---

## Business Recommendations

- Continue investing in high-performing product categories.
- Keep top-selling products available in inventory.
- Increase inventory before the Fall season.
- Focus marketing campaigns on high-value customer groups.
- Improve the subscription program to increase customer engagement.
- Investigate low-performing categories to identify opportunities for growth.

---

## Repository Structure

```
Customer-Shopping-Behavior-Analysis
│
├── Dataset
│
├── Python
│   └── Customer_Analysis.ipynb
│
├── SQL
│   └── Business_Queries.sql
│
├── Power BI
│   └── Customer_Shopping_Behavior.pbix
│
├── Dashboard.png
│
└── README.md
```

---

## Author

Mohit Jangid
