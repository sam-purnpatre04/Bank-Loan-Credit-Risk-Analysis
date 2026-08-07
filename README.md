#  Bank Loan Credit Risk Analysis

## 1. Project Overview

This project focuses on analyzing bank customer loan data to understand loan approval patterns, customer credit profiles, repayment behavior, and potential credit risk.

The project uses Python, Pandas, NumPy, Matplotlib, Excel, and Power BI to analyze the data and create an interactive dashboard.

The main objective is to identify factors such as credit score, income, payment history, employment type, loan amount, and credit tier that can help understand customer risk and loan outcomes.

---

## 2. Business Problem

Banks need to make informed lending decisions while minimizing the risk of loan defaults.

The objective of this project is to analyze customer and loan data to answer important business questions such as:

- What percentage of loans are approved, rejected, and defaulted?
- Which credit tiers have higher default risk?
- How does payment history affect loan outcomes?
- Which loan purposes have higher loan amounts?
- Which employment types have different loan approval patterns?
- How does annual income relate to loan amount?
- How does credit score vary across different loan outcomes?
- Which cities have higher loan exposure?
- How can high-risk customers be identified?

---

## 3. Dataset

The dataset contains customer, financial, credit, and loan-related information.

### Main Columns

- Customer_ID
- Age
- Gender
- City
- Employment_Type
- Annual_Income
- Loan_Amount
- Loan_Purpose
- Credit_Score
- Loan_Tenure_Years
- EMI_Amount
- Payment_History
- Loan_Status
- DTI_Ratio
- LTI_Ratio
- Credit_Tier

---

## 4. Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Excel
- Power BI
- DAX
- Git & GitHub

---

## 5. Data Preparation

The dataset was analyzed and prepared using Python before creating the final analysis and dashboard.

The data preparation process included:

- Understanding the dataset structure
- Checking data types
- Analyzing missing values
- Checking duplicate records
- Reviewing numerical statistics
- Validating categorical values
- Handling missing records
- Preparing the final dataset for analysis

---

## 6. Exploratory Data Analysis

The cleaned dataset was analyzed using Pandas, NumPy, and Matplotlib to identify meaningful patterns and relationships.

The analysis focused on:

### Loan Status Analysis

Analyzed the distribution of:

- Approved loans
- Rejected loans
- Defaulted loans

This helped understand the overall performance and risk profile of the loan portfolio.

### Credit Risk Analysis

Analyzed:

- Credit Score
- Credit Tier
- Loan Status
- Loan Amount

The relationship between credit tiers and loan outcomes was studied to identify higher-risk customer segments.

### Payment History Analysis

Analyzed customer payment behavior and compared it with loan status to understand whether missed or delayed payments were associated with higher default risk.

### Loan Purpose Analysis

Analyzed loan applications based on:

- Home Loan
- Car Loan
- Education Loan
- Personal Loan
- Business Loan

This helped identify the most common loan purposes and differences in loan amounts across categories.

### Customer Segmentation

Customers were analyzed based on:

- Gender
- City
- Employment Type
- Credit Tier

This helped identify differences in loan behavior and risk across customer groups.

### Financial Analysis

Analyzed:

- Annual Income
- Loan Amount
- EMI Amount
- Credit Score
- Loan Tenure
- DTI Ratio
- LTI Ratio

These variables were compared to understand customer affordability and potential credit risk.

---

## 7. Python Analysis

Python was used for exploratory data analysis and visualization.

### Pandas

Used for:

- Data exploration
- Grouping and aggregation
- Category-wise analysis
- Loan status analysis
- Customer segmentation
- Comparing loan and financial attributes

### NumPy

Used for:

- Numerical analysis
- Statistical calculations
- Correlation analysis
- Understanding relationships between financial variables

### Matplotlib

Used to create visualizations for:

- Loan Status Distribution
- Loan Purpose Analysis
- Credit Tier vs Loan Status
- Payment History vs Loan Status
- Loan Amount Analysis
- Credit Score Analysis
- Customer Segmentation

---

## 8. Power BI Dashboard

An interactive Power BI dashboard was created to present the major findings from the analysis.

### Dashboard KPIs

The dashboard includes:

- Total Customers
- Total Loan Amount
- Average Credit Score
- Approved Loans
- Defaulted Loans
- Default Rate

### Dashboard Visualizations

The dashboard provides insights into:

- Loan Portfolio by Status
- Loan Amount by Loan Purpose
- Credit Risk Across Credit Tiers
- Payment Behavior and Loan Outcomes
- Loan Amount by City
- Defaulted Loans by Employment Type
- Average Credit Score by Loan Status
- Credit Score and Risk Analysis

### Interactive Filters

The dashboard includes slicers for:

- City
- Credit Tier

These filters allow users to interactively explore different customer segments.

---

## 9. Key Insights

The analysis was used to identify important patterns in customer lending behavior.

Key areas of insight include:

- Loan approval and default distribution
- Credit tier and default relationships
- Payment history and loan outcomes
- Loan demand across different loan purposes
- Loan exposure across cities
- Employment type and loan outcomes
- Relationship between income and loan amount
- Credit score and loan behavior
- Potential high-risk customer segments

---

## 10. Business Recommendations

Based on the analysis, banks can:

- Give greater importance to credit score and payment history during credit assessment.
- Closely monitor customers with poor credit tiers.
- Monitor customers with high DTI and LTI ratios.
- Identify customer segments with higher default risk.
- Use customer and loan characteristics to improve lending decisions.
- Monitor loan purposes and locations with higher loan exposure.
- Use data-driven risk assessment to reduce potential loan defaults.
- Develop targeted strategies for different customer risk segments.

---

## 11. Project Outcome

This project demonstrates an end-to-end data analytics workflow, starting from raw bank loan data and progressing through data preparation, exploratory analysis, visualization, and business intelligence.

The project helped transform customer and loan-level data into meaningful business insights that can support better credit risk monitoring and lending decisions.

---

## 12. Project Structure

```text
Bank-Loan-Credit-Risk-Analysis/
│
├── Dataset/
│   └── bank_loan_data.csv
│
├── Python/
│   └── Bank_Loan_Credit_Risk_Analysis.ipynb
│
├── PowerBI/
│   ├── Bank_Loan_Credit_Risk_Dashboard.pbix
│   └── Dashboard_Screenshot.png
│
├── Excel/
│   └── Bank_Loan_Credit_Risk_Analysis.xlsx
│
└── README.md
